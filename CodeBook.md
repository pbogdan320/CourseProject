Data Dictionary - Course Project 

Data in TidyDataAll.txt
------------------------
Note:  First column of datafile is row number for the data set

Activity
	Description - Activity when measurement was taken
	Values			Source Dataset value
	Walking			1
	upstairs		2
	downstairs		3
	sitting			4
	standing		5
	laying			6


Subject
	Description - Unique id for study participants
	Values
	1 through 30.  

Variable
	Description - mean or standard deviation measurement type
	Values
	fBodyAcc.mean...X
	fBodyAcc.mean...Y
	fBodyAcc.mean...Z
	fBodyAcc.std...X
	fBodyAcc.std...Y
	fBodyAcc.std...Z
	fBodyAccJerk.mean...X
	fBodyAccJerk.mean...Y
	fBodyAccJerk.mean...Z
	fBodyAccJerk.std...X
	fBodyAccJerk.std...Y
	fBodyAccJerk.std...Z
	fBodyAccMag.std..
	fBodyBodyAccJerkMag.mean..
	fBodyBodyAccJerkMag.std..
	fBodyBodyGyroJerkMag.mean..
	fBodyBodyGyroJerkMag.std..
	fBodyBodyGyroMag.mean..
	fBodyBodyGyroMag.std..
	fBodyGyro.bandsEnergy...1.24.2
	fBodyGyro.mean...X
	fBodyGyro.mean...Y
	fBodyGyro.mean...Z
	fBodyGyro.std...X
	fBodyGyro.std...Y
	fBodyGyro.std...Z
	tBodyAcc.mean...X
	tBodyAcc.mean...Y
	tBodyAcc.mean...Z
	tBodyAcc.std...X
	tBodyAcc.std...Y
	tBodyAcc.std...Z
	tBodyAccJerk.mean...X
	tBodyAccJerk.mean...Y
	tBodyAccJerk.mean...Z
	tBodyAccJerk.std...X
	tBodyAccJerk.std...Y
	tBodyAccJerk.std...Z
	tBodyAccJerkMag.mean..
	tBodyAccJerkMag.std..
	tBodyAccMag.mean..
	tBodyAccMag.std..
	tBodyGyro.mean...X
	tBodyGyro.mean...Y
	tBodyGyro.mean...Z
	tBodyGyro.std...X
	tBodyGyro.std...Y
	tBodyGyro.std...Z
	tBodyGyroJerk.mean...X
	tBodyGyroJerk.mean...Y
	tBodyGyroJerk.mean...Z
	tBodyGyroJerk.std...X
	tBodyGyroJerk.std...Y
	tBodyGyroJerk.std...Z
	tBodyGyroJerkMag.mean..
	tBodyGyroJerkMag.std..
	tBodyGyroMag.mean..
	tBodyGyroMag.std..
	tGravityAcc.mean...X
	tGravityAcc.mean...Y
	tGravityAcc.mean...Z
	tGravityAcc.std...X
	tGravityAcc.std...Y
	tGravityAcc.std...Z
	tGravityAccMag.mean..
	tGravityAccMag.std..

Value
	Description - Mean or Standard Deviaion measurement numerical value

Data in TidyDataSubjectActivity.txt
------------------------
Note:  First column of datafile is row number for the data set

subject$Subject
	Description - Unique id for study participants
	Values
	1 through 30.

Activity
	Description - Activity when measurement was taken
	Values			Source Dataset value
	Walking			1
	upstairs		2
	downstairs		3
	sitting			4
	standing		5
	laying			6

All other data values(columns) see list of specific names below
	Description -- Average of measurements of this type for the subject and activity listed in that row of data
	list of specific names
	----------------------
	fBodyAcc.mean...X
	fBodyAcc.mean...Y
	fBodyAcc.mean...Z
	fBodyAcc.std...X
	fBodyAcc.std...Y
	fBodyAcc.std...Z
	fBodyAccJerk.mean...X
	fBodyAccJerk.mean...Y
	fBodyAccJerk.mean...Z
	fBodyAccJerk.std...X
	fBodyAccJerk.std...Y
	fBodyAccJerk.std...Z
	fBodyAccMag.std..
	fBodyBodyAccJerkMag.mean..
	fBodyBodyAccJerkMag.std..
	fBodyBodyGyroJerkMag.mean..
	fBodyBodyGyroJerkMag.std..
	fBodyBodyGyroMag.mean..
	fBodyBodyGyroMag.std..
	fBodyGyro.bandsEnergy...1.24.2
	fBodyGyro.mean...X
	fBodyGyro.mean...Y
	fBodyGyro.mean...Z
	fBodyGyro.std...X
	fBodyGyro.std...Y
	fBodyGyro.std...Z
	tBodyAcc.mean...X
	tBodyAcc.mean...Y
	tBodyAcc.mean...Z
	tBodyAcc.std...X
	tBodyAcc.std...Y
	tBodyAcc.std...Z
	tBodyAccJerk.mean...X
	tBodyAccJerk.mean...Y
	tBodyAccJerk.mean...Z
	tBodyAccJerk.std...X
	tBodyAccJerk.std...Y
	tBodyAccJerk.std...Z
	tBodyAccJerkMag.mean..
	tBodyAccJerkMag.std..
	tBodyAccMag.mean..
	tBodyAccMag.std..
	tBodyGyro.mean...X
	tBodyGyro.mean...Y
	tBodyGyro.mean...Z
	tBodyGyro.std...X
	tBodyGyro.std...Y
	tBodyGyro.std...Z
	tBodyGyroJerk.mean...X
	tBodyGyroJerk.mean...Y
	tBodyGyroJerk.mean...Z
	tBodyGyroJerk.std...X
	tBodyGyroJerk.std...Y
	tBodyGyroJerk.std...Z
	tBodyGyroJerkMag.mean..
	tBodyGyroJerkMag.std..
	tBodyGyroMag.mean..
	tBodyGyroMag.std..
	tGravityAcc.mean...X
	tGravityAcc.mean...Y
	tGravityAcc.mean...Z
	tGravityAcc.std...X
	tGravityAcc.std...Y
	tGravityAcc.std...Z
	tGravityAccMag.mean..
	tGravityAccMag.std..	
