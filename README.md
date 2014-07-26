Getting-and-Cleaning-Data-Project-Code
======================================

Summary: Provides R Script for Analyzing "UCI HAR Dataset"

======================================

In order to properly run the file "run_analysis.R" from R or R Studio, you must set your working directory to "~/UCI HAR Dataset/," whcih should contain the unzipped data acquired from the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data set contains sensor signals collected from 30 subjects in one of two conditions, test, and train, while they did the following activities: walking, walking upstairs, walking downstairs, sitting, standing, and laying.

For more detail on the dataset itself, please refer to the README.txt file found in the folder after downloading. 

The Script provided here, entitled "run_analysis.R" does the following:
1. Combines the data found in six files from the folder "UCI HAR Dataset": 
  a. "./train/X_train.txt"
  b. "./train/subject_train.txt"
  c."./train/y_train.txt"
  d. "./test/X_test.txt"
  e. "./test/subject_test.txt"
  f."./test/y_test.txt"
2. From the resultant dataframe, it adds the proper column names, and preserves only those columns that contain a mean or standard deviation of given measurements
3. Turns values for "activity" from a numerical value to its proper name, i.e. changing "1" to "WALKING"
4. Finds the mean for every combination of "subject," "activity," and "measurement."
5. Creates a tidy data file containing the data in step #4, as well as the initial data frame from step #3
These files are placed in a folder called "Output" within the working directory, and are CSV files with titles: 
"Merged Data Set.csv" and "Tidy Data Set - AverageBySubjectAndActivity.csv"

The latter file, "Tidy Data Set..." is what was submitted with the assignment as a .pdf file.
