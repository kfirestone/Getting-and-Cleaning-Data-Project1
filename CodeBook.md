#Data Cleanup Protocol and Data Dictionary

##Data Cleanup Protocol
*7 data frames read in(features.txt, subject_test.txt, y_test.txt, X_test.txt, subject_train.txt, y_train.txt, X_train.txt)
*Column names added to all data frames except one read in from features.txt
*All data frames except one read in from features.txt merged first by merging all test data column-wise and all train data column-wise followed by combining the merged test and train data row-wise
*Data ordered first by subject and then by activity
*Data was then subsetted to include only mean and standard deviation data
*Appropriate names were assigned to activity labels 1-6
*Data frame of column means of subsetted data was created

##Data Dictionary
* Subject
  - Indicates subjects (1-30)

*Activity
..*Indicates activity performed

*Mean of tBodyAcc-mean()-X
..*Column mean of times of body acceleration mean in X direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tBodyAcc-mean()-Y
..*Column mean of time of body acceleration mean in Y direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tBodyAcc-mean()-Z
..*Column mean of time of body acceleration mean in Z direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tBodyAcc-std()-X
..*Column mean of time of body acceleration standard deviation in X direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tBodyAcc-std()-Y
..*Column mean of time of body acceleration standard deviation in Y direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tBodyAcc-std()-Z
..*Column mean of time of body acceleration standard deviation in Z direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tGravityAcc-mean()-X
..*Column mean of time of gravity acceleration mean in X direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tGravityAcc-mean()-Y
..*Column mean of time of gravity acceleration mean in Y direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tGravityAcc-mean()-Z
..*Column mean of time of gravity acceleration mean in Z direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tGravityAcc-std()-X
..*Column mean of time of gravity acceleration standard deviation in X direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tGravityAcc-std()-Y
..*Column mean of time of gravity acceleration standard deviation in Y direction for subject and activity specified in "Subject" and "Activity" column

*Mean of tGravityAcc-std()-Z
..*Column mean of time of gravity acceleration standard deviation in Z direction for subject and activity specified in "Subject" and "Activity" column