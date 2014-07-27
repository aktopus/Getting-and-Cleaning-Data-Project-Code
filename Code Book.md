A description of the variables found in the tidy data set.

===========================================================

#The "input" variables:

Columns 1 and 2 specify the subject and activity that provided the mean for each measurement found in columns 3 to 80.
Columns 3-80 are titled for the standard deviation and the mean for each type of measurement taken from the wearable devices that the subjects used.

Subjects are numbered 1-30, Activities are titled walking, walking upstairs, walking downstairs, sitting, standing, and laying.

And the measurements are titled:

1. tBodyAcc-mean()-X
2. tBodyAcc-mean()-Y
3. tBodyAcc-mean()-Z
4. tBodyAcc-std()-X
5. tBodyAcc-std()-Y
6. tBodyAcc-std()-Z
7. tGravityAcc-mean()-X
8. tGravityAcc-mean()-Y
9. tGravityAcc-mean()-Z
10. tGravityAcc-std()-X
11. tGravityAcc-std()-Y
12. tGravityAcc-std()-Z
13. tBodyAccJerk-mean()-X
14. tBodyAccJerk-mean()-Y
15. tBodyAccJerk-mean()-Z
16. tBodyAccJerk-std()-X
17. tBodyAccJerk-std()-Y
18. tBodyAccJerk-std()-Z
19. tBodyGyro-mean()-X
20. tBodyGyro-mean()-Y
21. tBodyGyro-mean()-Z
22. tBodyGyro-std()-X
23. tBodyGyro-std()-Y
24. tBodyGyro-std()-Z
25. tBodyGyroJerk-mean()-X
26. tBodyGyroJerk-mean()-Y
27. tBodyGyroJerk-mean()-Z
28. tBodyGyroJerk-std()-X
29. tBodyGyroJerk-std()-Y
30. tBodyGyroJerk-std()-Z
31. tBodyAccMag-std()
32. tGravityAccMag-mean()
33. tGravityAccMag-std()
34. tBodyAccJerkMag-mean()
35. tBodyAccJerkMag-std()
36. tBodyGyroMag-mean()
37. tBodyGyroMag-std()
38. tBodyGyroJerkMag-mean()
39. tBodyGyroJerkMag-std()
40. fBodyAcc-mean()-X
41. fBodyAcc-mean()-Y
42. fBodyAcc-mean()-Z
43. fBodyAcc-std()-X
44. fBodyAcc-std()-Y
45. fBodyAcc-std()-Z
46. fBodyAcc-meanFreq()-X
47. fBodyAcc-meanFreq()-Y
48. fBodyAcc-meanFreq()-Z
49. fBodyAccJerk-mean()-X
50. fBodyAccJerk-mean()-Y
51. fBodyAccJerk-mean()-Z
52. fBodyAccJerk-std()-X
53. fBodyAccJerk-std()-Y
54. fBodyAccJerk-std()-Z
55. fBodyAccJerk-meanFreq()-X
56. fBodyAccJerk-meanFreq()-Y
57. fBodyAccJerk-meanFreq()-Z
58. fBodyGyro-mean()-X
59. fBodyGyro-mean()-Y
60. fBodyGyro-mean()-Z
61. fBodyGyro-std()-X
62. fBodyGyro-std()-Y
63. fBodyGyro-std()-Z
64. fBodyGyro-meanFreq()-X
65. fBodyGyro-meanFreq()-Y
66. fBodyGyro-meanFreq()-Z
67. fBodyAccMag-mean()
68. fBodyAccMag-std()
69. fBodyAccMag-meanFreq()
70. fBodyBodyAccJerkMag-mean()
71. fBodyBodyAccJerkMag-std()
72. fBodyBodyAccJerkMag-meanFreq()
73. fBodyBodyGyroMag-mean()
74. fBodyBodyGyroMag-std()
75. fBodyBodyGyroMag-meanFreq()
76. fBodyBodyGyroJerkMag-mean()
77. fBodyBodyGyroJerkMag-std()
78. fBodyBodyGyroJerkMag-meanFreq()

In the above, std stands for "standard deviation," "mean" corresponds to "mean value," and each measurement was taken from accelerometers and gyoscope signals that were processed. Details on how these measurements were created can be found in features_info.txt in the UCI HAR Dataset. 

#The output variables:

For each combination of subject, activity, and measurement, the user can see the mean. 
For example, if the user went to row 58, he or she would see all of the means for subject #28 in the "sitting" condition,
for all 78 measurements. These values are normalized and bounded within [-1,1].

#Dataset Citation:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
