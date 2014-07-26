A description of the variables found in the tidy data set.

===========================================================

1. The "input" variables:

Columns 1 and 2 specify the subject and activity that provided the mean for each measurement found in columns 3 to 80.
Columns 3-80 are titled for the standard deviation and the mean for each type of measurement taken from the wearable devices that the subjects used.

Subjects are numbered 1-30, Activities are titled walking, walking upstairs, walking downstairs, sitting, standing, and laying.

And the measurements are titled:

tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()

In the above, std stands for "standard deviation," "mean" corresponds to "mean value." 

2. The output variables:

For each combination of subject, activity, and measurement, the user can see the mean. 
For example, if the user went to row 58, he or she would see all of the means for subject #28 in the "sitting" condition,
for all 78 measurements.
