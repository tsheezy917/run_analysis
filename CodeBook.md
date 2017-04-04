***The original data set provides the following explanation of the variable and features selected***

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

***The resulting data from the run_analysis script produces the following, which are the means and standard deviations from the data above. They are variables of the dataframe "test_train".***  

"B" in a variable is short for "Body" as it appears above.  The XYZ axis are listed individually. 

    tBAcc-meanX              tBAcc-meanY              tBAcc-meanZ            
    tGravityAcc-meanX        tGravityAcc-meanY        tGravityAcc-meanZ        tBAccJerk-meanX        
    tBAccJerk-meanY          tBAccJerk-meanZ          tBGyro-meanX             tBGyro-meanY           
    tBGyro-meanZ             tBGyroJerk-meanX         tBGyroJerk-meanY         tBGyroJerk-meanZ       
    tBAccMag-mean            tGravityAccMag-mean      tBAccJerkMag-mean        tBGyroMag-mean         
    tBGyroJerkMag-mean       fBAcc-meanX              fBAcc-meanY              fBAcc-meanZ            
    fBAcc-meanFreqX          fBAcc-meanFreqY          fBAcc-meanFreqZ          fBAccJerk-meanX        
    fBAccJerk-meanY          fBAccJerk-meanZ          fBAccJerk-meanFreqX      fBAccJerk-meanFreqY    
    fBAccJerk-meanFreqZ      fBGyro-meanX             fBGyro-meanY             fBGyro-meanZ           
    fBGyro-meanFreqX         fBGyro-meanFreqY         fBGyro-meanFreqZ         fBAccMag-mean          
    fBAccMag-meanFreq        fBBAccJerkMag-mean       fBBAccJerkMag-meanFreq   fBBGyroMag-mean        
    fBBGyroMag-meanFreq      fBBGyroJerkMag-mean      fBBGyroJerkMag-meanFreq  tBAcc-stdX             
    tBAcc-stdY               tBAcc-stdZ               tGravityAcc-stdX         tGravityAcc-stdY       
    tGravityAcc-stdZ         tBAccJerk-stdX           tBAccJerk-stdY           tBAccJerk-stdZ         
    tBGyro-stdX              tBGyro-stdY              tBGyro-stdZ              tBGyroJerk-stdX        
    tBGyroJerk-stdY          tBGyroJerk-stdZ          tBAccMag-std             tGravityAccMag-std     
    tBAccJerkMag-std         tBGyroMag-std            tBGyroJerkMag-std        fBAcc-stdX             
    fBAcc-stdY               fBAcc-stdZ               fBAccJerk-stdX           fBAccJerk-stdY         
    fBAccJerk-stdZ           fBGyro-stdX              fBGyro-stdY              fBGyro-stdZ            
    fBAccMag-std             fBBAccJerkMag-std  

In addition, two columns were added ("activity" and "set") to preserve the categorical activity level **(1 = Walking, 2 = Walking Upstairs, 3 = Walking downstairs, 4 = standing, 5 = sitting, 6 = laying)** and whether an observation in the combined dataframe came from the "test" or the "training" set.  

 
