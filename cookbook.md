# Cookbook
percy tong  
Wednesday, September 03, 2014  

data set generation
------------------------------------------------------------------
1. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

2. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

3. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

4. These signals were used to estimate variables of the feature vector for each pattern

5. average of each variable for each activity and each subject

abbrivate used in the variable name: 
-----------------------------------------------------------------


abbr      | meaning
----------|---------------------------------------------
mean      | Mean value
std       | Standard deviation
X/Y/Z     | denote 3-axial signals in the X, Y and Z directions
t prefix  | Time
f prefix  | Fast Fourier Transform (FFT) was applied
MAG       | calculated using the Euclidean norm



The list of variables:
------------------------------------------------------------------

```
##                variable name desc
## 1                   activity     
## 2                    subject     
## 3            tBodyAcc_Mean_X     
## 4            tBodyAcc_Mean_Y     
## 5            tBodyAcc_Mean_Z     
## 6             tBodyAcc_Std_X     
## 7             tBodyAcc_Std_Y     
## 8             tBodyAcc_Std_Z     
## 9         tGravityAcc_Mean_X     
## 10        tGravityAcc_Mean_Y     
## 11        tGravityAcc_Mean_Z     
## 12         tGravityAcc_Std_X     
## 13         tGravityAcc_Std_Y     
## 14         tGravityAcc_Std_Z     
## 15       tBodyAccJerk_Mean_X     
## 16       tBodyAccJerk_Mean_Y     
## 17       tBodyAccJerk_Mean_Z     
## 18        tBodyAccJerk_Std_X     
## 19        tBodyAccJerk_Std_Y     
## 20        tBodyAccJerk_Std_Z     
## 21          tBodyGyro_Mean_X     
## 22          tBodyGyro_Mean_Y     
## 23          tBodyGyro_Mean_Z     
## 24           tBodyGyro_Std_X     
## 25           tBodyGyro_Std_Y     
## 26           tBodyGyro_Std_Z     
## 27      tBodyGyroJerk_Mean_X     
## 28      tBodyGyroJerk_Mean_Y     
## 29      tBodyGyroJerk_Mean_Z     
## 30       tBodyGyroJerk_Std_X     
## 31       tBodyGyroJerk_Std_Y     
## 32       tBodyGyroJerk_Std_Z     
## 33          tBodyAccMag_Mean     
## 34           tBodyAccMag_Std     
## 35       tGravityAccMag_Mean     
## 36        tGravityAccMag_Std     
## 37      tBodyAccJerkMag_Mean     
## 38       tBodyAccJerkMag_Std     
## 39         tBodyGyroMag_Mean     
## 40          tBodyGyroMag_Std     
## 41     tBodyGyroJerkMag_Mean     
## 42      tBodyGyroJerkMag_Std     
## 43           fBodyAcc_Mean_X     
## 44           fBodyAcc_Mean_Y     
## 45           fBodyAcc_Mean_Z     
## 46            fBodyAcc_Std_X     
## 47            fBodyAcc_Std_Y     
## 48            fBodyAcc_Std_Z     
## 49       fBodyAccJerk_Mean_X     
## 50       fBodyAccJerk_Mean_Y     
## 51       fBodyAccJerk_Mean_Z     
## 52        fBodyAccJerk_Std_X     
## 53        fBodyAccJerk_Std_Y     
## 54        fBodyAccJerk_Std_Z     
## 55          fBodyGyro_Mean_X     
## 56          fBodyGyro_Mean_Y     
## 57          fBodyGyro_Mean_Z     
## 58           fBodyGyro_Std_X     
## 59           fBodyGyro_Std_Y     
## 60           fBodyGyro_Std_Z     
## 61          fBodyAccMag_Mean     
## 62           fBodyAccMag_Std     
## 63  fBodyBodyAccJerkMag_Mean     
## 64   fBodyBodyAccJerkMag_Std     
## 65     fBodyBodyGyroMag_Mean     
## 66      fBodyBodyGyroMag_Std     
## 67 fBodyBodyGyroJerkMag_Mean     
## 68  fBodyBodyGyroJerkMag_Std
```

