## Study Design

Human Activity Recognition Using Smartphones Dataset
Version 1.0

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## Code Book --
Variables	Unit	Value	Explanation					
subjectid		integers in 1-30	The ID of the subjects					
activity		"WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
"	The names of the activities					
timeBodyAcceleration-mean()-X	g	[-1,1]	Apply to variables 4-68: mean() is the mean value; std() is the standard deviation; '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.					
timeBodyAcceleration-mean()-Y	g	[-1,1]						
timeBodyAcceleration-mean()-Z	g	[-1,1]						
timeBodyAcceleration-std()-X	g	[-1,1]						
timeBodyAcceleration-std()-Y	g	[-1,1]						
timeBodyAcceleration-std()-Z	g	[-1,1]						
timeGravityAcceleration-mean()-X	g	[-1,1]						
timeGravityAcceleration-mean()-Y	g	[-1,1]						
timeGravityAcceleration-mean()-Z	g	[-1,1]						
timeGravityAcceleration-std()-X	g	[-1,1]						
timeGravityAcceleration-std()-Y	g	[-1,1]						
timeGravityAcceleration-std()-Z	g	[-1,1]						
timeBodyAccelerationJerk-mean()-X	g	[-1,1]						
timeBodyAccelerationJerk-mean()-Y	g	[-1,1]						
timeBodyAccelerationJerk-mean()-Z	g	[-1,1]						
timeBodyAccelerationJerk-std()-X	g	[-1,1]						
timeBodyAccelerationJerk-std()-Y	g	[-1,1]						
timeBodyAccelerationJerk-std()-Z	g	[-1,1]						
timeBodyGyroscope-mean()-X	radians/second	[-1,1]						
timeBodyGyroscope-mean()-Y	radians/second	[-1,1]						
timeBodyGyroscope-mean()-Z	radians/second	[-1,1]						
timeBodyGyroscope-std()-X	radians/second	[-1,1]						
timeBodyGyroscope-std()-Y	radians/second	[-1,1]						
timeBodyGyroscope-std()-Z	radians/second	[-1,1]						
timeBodyGyroscopeJerk-mean()-X	radians/second	[-1,1]						
timeBodyGyroscopeJerk-mean()-Y	radians/second	[-1,1]						
timeBodyGyroscopeJerk-mean()-Z	radians/second	[-1,1]						
timeBodyGyroscopeJerk-std()-X	radians/second	[-1,1]						
timeBodyGyroscopeJerk-std()-Y	radians/second	[-1,1]						
timeBodyGyroscopeJerk-std()-Z	radians/second	[-1,1]						
timeBodyAccelerationMagnitude-mean()	g	[-1,1]						
timeBodyAccelerationMagnitude-std()	g	[-1,1]						
timeGravityAccelerationMagnitude-mean()	g	[-1,1]						
timeGravityAccelerationMagnitude-std()	g	[-1,1]						
timeBodyAccelerationJerkMagnitude-mean()	g	[-1,1]						
timeBodyAccelerationJerkMagnitude-std()	g	[-1,1]						
timeBodyGyroscopeMagnitude-mean()	radians/second	[-1,1]						
timeBodyGyroscopeMagnitude-std()	radians/second	[-1,1]						
timeBodyGyroscopeJerkMagnitude-mean()	radians/second	[-1,1]						
timeBodyGyroscopeJerkMagnitude-std()	radians/second	[-1,1]						
frequencyBodyAcceleration-mean()-X	g	[-1,1]						
frequencyBodyAcceleration-mean()-Y	g	[-1,1]						
frequencyBodyAcceleration-mean()-Z	g	[-1,1]						
frequencyBodyAcceleration-std()-X	g	[-1,1]						
frequencyBodyAcceleration-std()-Y	g	[-1,1]						
frequencyBodyAcceleration-std()-Z	g	[-1,1]						
frequencyBodyAccelerationJerk-mean()-X	g	[-1,1]						
frequencyBodyAccelerationJerk-mean()-Y	g	[-1,1]						
frequencyBodyAccelerationJerk-mean()-Z	g	[-1,1]						
frequencyBodyAccelerationJerk-std()-X	g	[-1,1]						
frequencyBodyAccelerationJerk-std()-Y	g	[-1,1]						
frequencyBodyAccelerationJerk-std()-Z	g	[-1,1]						
frequencyBodyGyroscope-mean()-X	radians/second	[-1,1]						
frequencyBodyGyroscope-mean()-Y	radians/second	[-1,1]						
frequencyBodyGyroscope-mean()-Z	radians/second	[-1,1]						
frequencyBodyGyroscope-std()-X	radians/second	[-1,1]						
frequencyBodyGyroscope-std()-Y	radians/second	[-1,1]						
frequencyBodyGyroscope-std()-Z	radians/second	[-1,1]						
frequencyBodyAccelerationMagnitude-mean()	g	[-1,1]						
frequencyBodyAccelerationMagnitude-std()	g	[-1,1]						
frequencyBodyBodyAccelerationJerkMagnitude-mean()	g	[-1,1]						
frequencyBodyBodyAccelerationJerkMagnitude-std()	g	[-1,1]						
frequencyBodyBodyGyroscopeMagnitude-mean()	radians/second	[-1,1]						
frequencyBodyBodyGyroscopeMagnitude-std()	radians/second	[-1,1]						
frequencyBodyBodyGyroscopeJerkMagnitude-mean()	radians/second	[-1,1]						
frequencyBodyBodyGyroscopeJerkMagnitude-std()	radians/second	[-1,1]						
