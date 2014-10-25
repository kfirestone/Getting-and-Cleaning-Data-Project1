#Data Cleanup Protocol and Data Dictionary

##Data Cleanup Protocol
* 7 data frames read in (features.txt, subject_test.txt, y_test.txt, X_test.txt, subject_train.txt, y_train.txt, X_train.txt)
* Column names added to all data frames except one read in from features.txt
* All data frames except one read in from features.txt merged first by merging all test data column-wise and all train data column-wise followed by combining the merged test and train data row-wise
* Data ordered first by subject and then by activity
* Data was then subsetted to include only mean and standard deviation data
* Appropriate names were assigned to activity labels 1-6
* Data frame of column means of subsetted data was created

##Data Dictionary

FFT denotes Fast Fourier Transform

All numeric values have been normalized to be within [-1,1]

* Subject
  - Indicates subjects (1-30)

* Activity
  - Indicates activity performed

* Mean of tBodyAcc-mean()-X
  - Column mean of times of body acceleration mean in X direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tBodyAcc-mean()-Y
  - Column mean of time of body acceleration mean in Y direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tBodyAcc-mean()-Z
  - Column mean of time of body acceleration mean in Z direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tBodyAcc-std()-X
  - Column mean of time of body acceleration standard deviation in X direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tBodyAcc-std()-Y
  - Column mean of time of body acceleration standard deviation in Y direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tBodyAcc-std()-Z
  - Column mean of time of body acceleration standard deviation in Z direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tGravityAcc-mean()-X
  - Column mean of time of gravity acceleration mean in X direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tGravityAcc-mean()-Y
  - Column mean of time of gravity acceleration mean in Y direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tGravityAcc-mean()-Z
  - Column mean of time of gravity acceleration mean in Z direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tGravityAcc-std()-X
  - Column mean of time of gravity acceleration standard deviation in X direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tGravityAcc-std()-Y
  - Column mean of time of gravity acceleration standard deviation in Y direction for subject and activity specified in "Subject" and "Activity" column

* Mean of tGravityAcc-std()-Z
  - Column mean of time of gravity acceleration standard deviation in Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyAccJerk-mean()-X
  - Column mean of time of jerk body acceleration mean in X direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyAccJerk-mean()-Y
  - Column mean of time of jerk body acceleration mean in Y direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyAccJerk-mean()-Z
  - Column mean of time of jerk body acceleration mean in Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyAccJerk-std()-X
  - Column mean of time of jerk body acceleration standard deviation in X direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyAccJerk-std()-Y
  - Column mean of time of jerk body acceleration standard deviation in Y direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyAccJerk-std()-Z
  - Column mean of time of jerk body acceleration standard deviation in Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyro-mean()-X
  - Column mean of time of body gyro mean in X direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyro-mean()-Y
  - Column mean of time of body gyro mean in Y direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyro-mean()-Z
  - Column mean of time of body gyro mean in Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyro-std()-X
  - Column mean of time of body gyro standard deviation in X direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyro-std()-Y
  - Column mean of time of body gyro standard deviation in Y direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyro-std()-Z
  - Column mean of time of body gyro standard deviation in Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroJerk-mean()-X
  - Column mean of time of jerk body gyro mean in X direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroJerk-mean()-Y
  - Column mean of time of jerk body gyro mean in Y direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroJerk-mean()-Z
  - Column mean of time of jerk body gyro mean in Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroJerk-std()-X
  - Column mean of time of jerk body gyro standard deviation in X direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroJerk-std()-Y
  - Column mean of time of jerk body gyro standard deviation in Y direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroJerk-std()-Z
  - Column mean of time of jerk body gyro standard deviation in Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyAccMag-mean()
  - Column mean of the magnitude of the body acceleration mean for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyAccMag-std()
  - Column mean of the magnitude of the body acceleration standard deviation for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tGravityAccMag-mean()
  - Column mean of the mean magnitude of the acceleration due to gravity for subject and activity specified in "Subject" and "Activity" columns
  
* Mean of tGravityAccMag-std()
  - Column mean of the  standard deviation of the magnitude of the acceleration due to gravity for subject and activity specified in "Subject" and "Activity" columns
  
* Mean of tBodyAccJerkMag-mean()
  - Column mean of the mean magnitude of the body jerk acceleration for subject and activity specified in "Subject" and "Activity" columns
  
* Mean of tBodyAccJerkMag-std()
  - Column mean of the standard deviation of the magnitude of the body jerk acceleration for subject and activity specified in "Subject" and "Activity" columns
  
* Mean of tBodyGyroMag-mean()
  - Column mean of the mean magnitude of the body gryo for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroMag-std()
  - Column mean of the standard deviation of the magnitude of the body gryo for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroJerkMag-mean()
  - Column mean of the mean magnitude of the body jerk gyro for subject and activity specified in "Subject" and "Activity" column
  
* Mean of tBodyGyroJerkMag-std()
  - Column mean of the standard deviation of the magnitude of the body jerk gyro for subject and activity specified in "Subject" and "Activity" column
  
* Mean of fBodyAcc-mean()-X
  - Column mean of the mean FFT of the body acceleration in the X direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of fBodyAcc-mean()-Y
  - Column mean of the mean FFT of the body acceleration in the Y direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of fBodyAcc-mean()-Z
  - Column mean of the mean FFT of the body acceleration in the Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of fBodyAcc-std()-X
  - Column mean of the standard deviation of the FFT of the body acceleration in the X direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of fBodyAcc-std()-Y
  - Column mean of the standard deviation of the FFT of the body acceleration in the Y direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of fBodyAcc-std()-Z
  - Column mean of the standard deviation of the FFT of the body acceleration in the Z direction for subject and activity specified in "Subject" and "Activity" column
  
* Mean of fBodyAccJerk-mean()-X
  - Column mean of the mean FFT of the jerk body acceleration in the X direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyAccJerk-mean()-Y
  - Column mean of the mean FFT of the jerk body acceleration in the Y direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyAccJerk-mean()-Z
  - Column mean of the mean FFT of the jerk body acceleration in the Z direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyAccJerk-std()-X
  - Column mean of the standard deviation of the FFT of the jerk body acceleration in the X direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyAccJerk-std()-Y
  - Column mean of the standard deviation of the FFT of the jerk body acceleration in the Y direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyAccJerk-std()-Z
  - Column mean of the standard deviation of the FFT of the jerk body acceleration in the Z direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyGyro-mean()-X
  - Column mean of the mean FFT of the body gryo in the X direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyGyro-mean()-Y
  - Column mean of the mean FFT of the body gryo in the Y direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyGyro-mean()-Z
  - Column mean of the mean FFT of the body gryo in the Z direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyGyro-std()-X
  - Column mean of the standard deviation of the FFT of the body gryo in the X direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyGyro-std()-Y
  - Column mean of the standard deviation of the FFT of the body gryo in the Y direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyGyro-std()-Z
  - Column mean of the standard deviation of the FFT of the body gryo in the Z direction for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyAccMag-mean()
  - Column mean of mean magnitude of the body acceleration FFT for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyAccMag-std()
  - Column mean of standard deviation of the magnitude of the body acceleration FFT for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyBodyAccJerkMag-mean()
  - Column mean of the mean magnitude of the jerk body acceleration FFT for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyBodyAccJerkMag-std()
  - Column mean of the standard deviation of the magnitude of the jerk body acceleration FFT for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyBodyGyroMag-mean()
  - Column mean of the mean magnitude of the body gyro FFT for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyBodyGyroMag-std()
  - Column mean of the standard deviation of the magnitude of the body gyro FFT for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyBodyGyroJerkMag-mean()
  - Column mean of mean magnitude of the jerk body gryo FFT for the subject and activity specified in the "Subject" and "Activity" column
  
* Mean of fBodyBodyGyroJerkMag-std()
  - Column mean of standard deviation of the magnitude of the jerk body gryo FFT for the subject and activity specified in the "Subject" and "Activity" column