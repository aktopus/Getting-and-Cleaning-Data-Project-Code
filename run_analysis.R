run_analysis<-function(){
  #NOTE: PLEASE SET YOUR WORKING DIRECTORY TO THE FOLDER "UCI HAR Dataset" -- setwd("UCI HAR Dataset")
  
#DATASET 1 ORGANIZATION
  #save file 1: Open largest file we're interested in and reorganize. i.e. Xtrain.txt
  
  xTrain<-scan("./train/X_train.txt")
  xTrainS<-split(xTrain, ceiling(seq_along(xTrain)/7352)) #split the file into 561 columns
  xTrainSDF<-as.data.frame(xTrainS)
  
  #save file 2
  subjectTrain<-scan("./train/subject_train.txt")
  
  #save file 3
  yTrain<-scan("./train/y_train.txt")

  
#DATASET 2 ORGANIZATION
  #save file 4: Open largest file we're interested in and reorganize. i.e. Xtest.txt
  xTest<-scan("./test/X_test.txt")
  xTestS<-split(xTest, ceiling(seq_along(xTest)/2947)) #split the file into 561 columns
  xTestSDF<-as.data.frame(xTestS)
  
  #save file 5
  subjectTest<-scan("./test/subject_test.txt")
  
  #save file 6
  yTest<-scan("./test/y_test.txt")
  
  
  #merge files 1-3, then merge files 4-6
  fullTrain<-cbind(subjectTrain,yTrain,xTrainSDF)
  fullTest<-cbind(subjectTest,yTest,xTestSDF)

  #give merged files the same column so they can be put together
  names(fullTrain)<-names(fullTest)
  
  #Satisfies requirement of item #1: "Merges the training and the test sets to create one data set."
  mergedOne<-rbind(fullTrain,fullTest)



  #Satisfies requirement of item #4: "Appropriately labels the data set with descriptive variable names."
  mergedNames<-read.table("features.txt",sep=" ")
  mergedNames[,2]<-as.character(mergedNames[,2])
  colnames(mergedOne)<-c("subject","activity",mergedNames[,2])

  
  
  #Satisfies requirement of item #3: "Uses descriptive activity names to name the activities in the data set"
  mergedOne$activity[mergedOne$activity==1]<-"WALKING"
  mergedOne$activity[mergedOne$activity==2]<-"WALKING_UPSTAIRS"
  mergedOne$activity[mergedOne$activity==3]<-"WALKING_DOWNSTAIRS"
  mergedOne$activity[mergedOne$activity==4]<-"SITTING"
  mergedOne$activity[mergedOne$activity==5]<-"STANDING"
  mergedOne$activity[mergedOne$activity==6]<-"LAYING"
  
  
  #Satisfies requirement of item #2: "Extracts only the measurements on the mean and standard deviation for each measurement."
  mcolnames<-colnames(mergedOne)  
  cnamesKeep1<-lapply(mcolnames,function(x) grepl("mean()",mcolnames))
  cnamesKeep2<-lapply(mcolnames,function(x) grepl("std()",mcolnames))
  cnamesKeepDF1<-as.data.frame(cnamesKeep1) #for some reason I need to convert to data frame. 
  cnamesKeepDF2<-as.data.frame(cnamesKeep2)
  cnamesKeep<-cnamesKeepDF1[,1]+cnamesKeepDF2[,1] #I can't figure out how to properly use grepl with OR, and since adding the two arrays was simple enough and worked just went with it
  finalKeep<-which(cnamesKeep==1)
  finalKeep<-c(1,2,finalKeep)
  mergedTwo<-mergedOne[,c(finalKeep)]
  
  dir.create("Output")
  
 
  
#Satisfies requirement of item #5: "Creates a second, independent tidy data set with the average of each variable for each activity and each subject."
  mergedMeans<-aggregate(mergedTwo[,3:80],by=list(mergedTwo$subject,mergedTwo$activity),mean)


  colnames(mergedMeans)[1:2]<-c("Subject","Activity") 

  write.csv(mergedTwo,file="./Output/Merged Data Set.csv") #output for item #2: "Extracts only the measurements on the mean and standard deviation for each measurement."
  write.csv(mergedMeans,file="./Output/Tidy Data Set - AverageBySubjectAndActivity.csv") #output for item #5 "Creates a second, independent tidy data set with the average of each variable for each activity and each subject."

}
