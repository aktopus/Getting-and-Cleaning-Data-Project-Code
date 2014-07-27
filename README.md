Getting-and-Cleaning-Data-Project-Code
======================================

Summary: Provides R Script for Analyzing "UCI HAR Dataset"

======================================

In order to properly run the file "run_analysis.R" from R or R Studio, you must set your working directory to "~/UCI HAR Dataset/," whcih should contain the unzipped data acquired from the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data set contains sensor signals collected from 30 subjects while they did the following activities: walking, walking upstairs, walking downstairs, sitting, standing, and laying. 9 subjects were selected to generate the data placed in "train" and 21 subjects were selected for "test."

For more detail on the dataset itself, please refer to the README.txt file found in the folder after downloading. 
For detail on the final dataset, please refer to "Code Book.md" in this repository.

The Script provided here, entitled "run_analysis.R" does the following:

1. Combines the data found in six files from the folder "UCI HAR Dataset": a. "./train/X_train.txt" b. "./train/subject_train.txt" c."./train/y_train.txt" d. "./test/X_test.txt" e. "./test/subject_test.txt" f."./test/y_test.txt"


2. From the resultant dataframe, it adds the proper column names, and preserves only those columns that contain a mean or standard deviation of given measurements


3. Turns values for "activity" from a numerical value to its proper name, i.e. changing "1" to "WALKING"


4. Finds the mean for every combination of "subject," "activity," and "measurement."


5. Creates a tidy data file containing the data in step #4, as well as the initial data frame from step #3
These files are placed in a folder called "Output" within the working directory, and are CSV files with titles: 
"Merged Data Set.csv" and "Tidy Data Set - AverageBySubjectAndActivity.csv"

The latter file, "Tidy Data Set..." is what was submitted with the assignment as a .pdf file.


A more detailed, description of the code: 
1. Opens the file X_train.txt, which contains all measurements created by subjects doing activities during the longer, "train" condition. (file 1)


2. Since this data is a very long vector, turns it into a list of 561 elements per row, and then converts it into a data frame (since all rows are equal in length). (file 2)


3. Opens subject_train.txt, which contains the numbers corresponding to each of the subjects whose activities were measured. (file 3)


4. Repeats steps 1-3, but for the equivalent files in the "train" folder. (files 4-6).


5. Combines files 1-3 along their columns. (complete test data) Combines files 1-3 along their columns. (complete train data) Combines the complete train data with the complete test data along their rows. (full data set)


6. Opens the file "features_info.txt" to obtain the proper column names, and adds the column names to the full data set.


7. Changes the names of each activity from numerical value to its proper name: 1 to "WALKING" 2 to "WALKING_UPSTAIRS" 3 to "WALKING_DOWNSTAIRS" 4 to "SITTING" 5 to "STANDING" and 6 to "LAYING".


8. Eliminates the columns that are not "mean" or "standard deviation" measurements.


9. Calculates the mean for all of the combinations of "subject", "activity", and "measurement".


10. Prints two files, "Merged Data Set.csv" and "Tidy Data Set - AverageBySubjectAndActivity.csv", the latter of which contains the data set that completes the assignment.

Further detail may be found in the comments for the code itself, and more information on the data can be found at 
https://github.com/aktopus/Getting-and-Cleaning-Data-Project-Code/blob/master/Code%20Book.md

#Dataset Citation:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.

