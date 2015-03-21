
# Code Book
## Getting and Cleaning Data Project

The aim of this code book is to describe the variables, the data, and overall work 
performed to clean up the data. The specific steps followed to obtain the final tidy
datasets are described inside the code files.


## Variables

### Variables of the original data


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. [1]

**Note**: Names were adjusted to be more explicit

- timeBodyAccelerometer-XYZ
- timeGravityAccelerometer-XYZ
- timeBodyAccelerometerJerk-XYZ
- timeBodyGyroscope-XYZ
- timeBodyGyroscopeJerk-XYZ
- timeBodyAccelerometerMagnitude
- timeGravityAccelerometerMagnitude
- timeBodyAccelerometerJerkMagnitude
- timeBodyGyroscopeMagnitude
- timeBodyGyroscopeJerkMagnitude
- frequencyBodyAccelerometer-XYZ
- frequencyBodyAccelerometerJerk-XYZ
- frequencyBodyGyroscope-XYZ
- frequencyBodyAccelerometerMagnitude
- frequencyBodyAccelerometerJerkMagnitude
- frequencyBodyGyroscopeMagnitude
- frequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals **and used in this assignment** are: 

- mean: Mean value
- std: Standard deviation


### New variables

The following variables were created in order to obtain the tidy data:

- **subjectsID**
    - Description: data frame with the **IDs of all subjects** (test and train) per observation
    - Size: 10299 observations of 1 variable
    - Variables:
        - subjectID: (int) IDs of subjects per observation

- **trainingIDs**
    - Description: data frame with the **training IDs** (test and train) per observation
    - Size: 10299 observations of 1 variable
    - Variables:
        - trainingID: (int) training IDs per observation

- **trainingLabels**
    - Description: data frame with the factor of **training types** avaliable
    - Size: 6 observations of 2 variables
    - Variables:
        - trainingID: (int) training IDs
        - trainingType: (Factor) factor with 6 levels
            - LAYING
            - SITTING
            - STANDING
            - WALKING
            - WALKING_DOWNSTAIRS
            - WALKING_UPSTAIRS

- **trainingType**
    - Description: data frame with **training IDs and types** (test and train) per observation
    - Size: 10299 observations of 2 variables
    - Variables:
        - trainingID: (int) training IDs per observation
        - trainingTypeID: (character) training types **per observation**
            - LAYING
            - SITTING
            - STANDING
            - WALKING
            - WALKING_DOWNSTAIRS
            - WALKING_UPSTAIRS
            
- **variables**
    - Description: data frame with the **variable names** and corresponding **columns** 
    for mean and stadar deviation variables
    - Size: 66 observations of 2 variables
    - Variables:
        - column: (int) column number of required variables
        - variable: (character) name of corresponding required variable


- **dataMeanStd**
    - Description: data frame with the the data collected per observation for 
    each varible required (mean and std)
    - Size: 10299 observations of 66 variables
    - Variables (as described in **Variables of the original data**):
        - timeBodyAccelerometer_mean_X 
        - timeBodyAccelerometer_mean_Y 
        - timeBodyAccelerometer_mean_Z 
        - timeBodyAccelerometer_std_X
        - timeBodyAccelerometer_std_Y 
        - timeBodyAccelerometer_std_Z
        - timeGravityAccelerometer_mean_X 
        - timeGravityAccelerometer_mean_Y
        - timeGravityAccelerometer_mean_Z 
        - timeGravityAccelerometer_std_X
        - timeGravityAccelerometer_std_Y 
        - timeGravityAccelerometer_std_Z
        - timeBodyAccelerometerJerk_mean_X
        - timeBodyAccelerometerJerk_mean_Y
        - timeBodyAccelerometerJerk_mean_Z
        - timeBodyAccelerometerJerk_std_X
        - timeBodyAccelerometerJerk_std_Y
        - timeBodyAccelerometerJerk_std_Z
        - timeBodyGyroscope_mean_X
        - timeBodyGyroscope_mean_Y
        - timeBodyGyroscope_mean_Z
        - timeBodyGyroscope_std_X
        - timeBodyGyroscope_std_Y
        - timeBodyGyroscope_std_Z
        - timeBodyGyroscopeJerk_mean_X
        - timeBodyGyroscopeJerk_mean_Y
        - timeBodyGyroscopeJerk_mean_Z
        - timeBodyGyroscopeJerk_std_X
        - timeBodyGyroscopeJerk_std_Y
        - timeBodyGyroscopeJerk_std_Z
        - timeBodyAccelerometerMagnitude_mean
        - timeBodyAccelerometerMagnitude_std
        - timeGravityAccelerometerMagnitude_mean
        - timeGravityAccelerometerMagnitude_std
        - timeBodyAccelerometerJerkMagnitude_mean
        - timeBodyAccelerometerJerkMagnitude_std
        - timeBodyGyroscopeMagnitude_mean
        - timeBodyGyroscopeMagnitude_std
        - timeBodyGyroscopeJerkMagnitude_mean
        - timeBodyGyroscopeJerkMagnitude_std
        - frequencyBodyAccelerometer_mean_X
        - frequencyBodyAccelerometer_mean_Y
        - frequencyBodyAccelerometer_mean_Z
        - frequencyBodyAccelerometer_std_X
        - frequencyBodyAccelerometer_std_Y
        - frequencyBodyAccelerometer_std_Z
        - frequencyBodyAccelerometerJerk_mean_X
        - frequencyBodyAccelerometerJerk_mean_Y
        - frequencyBodyAccelerometerJerk_mean_Z
        - frequencyBodyAccelerometerJerk_std_X
        - frequencyBodyAccelerometerJerk_std_Y
        - frequencyBodyAccelerometerJerk_std_Z
        - frequencyBodyGyroscope_mean_X
        - frequencyBodyGyroscope_mean_Y
        - frequencyBodyGyroscope_mean_Z
        - frequencyBodyGyroscope_std_X
        - frequencyBodyGyroscope_std_Y
        - frequencyBodyGyroscope_std_Z
        - frequencyBodyAccelerometerMagnitude_mean
        - frequencyBodyAccelerometerMagnitude_std
        - frequencyBodyBodyAccelerometerJerkMagnitude_mean
        - frequencyBodyBodyAccelerometerJerkMagnitude_std
        - frequencyBodyBodyGyroscopeMagnitude_mean
        - frequencyBodyBodyGyroscopeMagnitude_std
        - frequencyBodyBodyGyroscopeJerkMagnitude_mean
        - frequencyBodyBodyGyroscopeJerkMagnitude_std 

- **data**
    - Description: data frame with the the data collected in previous variables 
    (final data).
    - Size: 10299 observations of 68 variables
    - Variables:
        - subjecID: from **subjectsID** variable
        - trainingTypeID: from **trainingType** variable
        - timeBodyAccelerometer_mean_X 
        - timeBodyAccelerometer_mean_Y 
        - timeBodyAccelerometer_mean_Z 
        - timeBodyAccelerometer_std_X
        - timeBodyAccelerometer_std_Y 
        - timeBodyAccelerometer_std_Z
        - timeGravityAccelerometer_mean_X 
        - timeGravityAccelerometer_mean_Y
        - timeGravityAccelerometer_mean_Z 
        - timeGravityAccelerometer_std_X
        - timeGravityAccelerometer_std_Y 
        - timeGravityAccelerometer_std_Z
        - timeBodyAccelerometerJerk_mean_X
        - timeBodyAccelerometerJerk_mean_Y
        - timeBodyAccelerometerJerk_mean_Z
        - timeBodyAccelerometerJerk_std_X
        - timeBodyAccelerometerJerk_std_Y
        - timeBodyAccelerometerJerk_std_Z
        - timeBodyGyroscope_mean_X
        - timeBodyGyroscope_mean_Y
        - timeBodyGyroscope_mean_Z
        - timeBodyGyroscope_std_X
        - timeBodyGyroscope_std_Y
        - timeBodyGyroscope_std_Z
        - timeBodyGyroscopeJerk_mean_X
        - timeBodyGyroscopeJerk_mean_Y
        - timeBodyGyroscopeJerk_mean_Z
        - timeBodyGyroscopeJerk_std_X
        - timeBodyGyroscopeJerk_std_Y
        - timeBodyGyroscopeJerk_std_Z
        - timeBodyAccelerometerMagnitude_mean
        - timeBodyAccelerometerMagnitude_std
        - timeGravityAccelerometerMagnitude_mean
        - timeGravityAccelerometerMagnitude_std
        - timeBodyAccelerometerJerkMagnitude_mean
        - timeBodyAccelerometerJerkMagnitude_std
        - timeBodyGyroscopeMagnitude_mean
        - timeBodyGyroscopeMagnitude_std
        - timeBodyGyroscopeJerkMagnitude_mean
        - timeBodyGyroscopeJerkMagnitude_std
        - frequencyBodyAccelerometer_mean_X
        - frequencyBodyAccelerometer_mean_Y
        - frequencyBodyAccelerometer_mean_Z
        - frequencyBodyAccelerometer_std_X
        - frequencyBodyAccelerometer_std_Y
        - frequencyBodyAccelerometer_std_Z
        - frequencyBodyAccelerometerJerk_mean_X
        - frequencyBodyAccelerometerJerk_mean_Y
        - frequencyBodyAccelerometerJerk_mean_Z
        - frequencyBodyAccelerometerJerk_std_X
        - frequencyBodyAccelerometerJerk_std_Y
        - frequencyBodyAccelerometerJerk_std_Z
        - frequencyBodyGyroscope_mean_X
        - frequencyBodyGyroscope_mean_Y
        - frequencyBodyGyroscope_mean_Z
        - frequencyBodyGyroscope_std_X
        - frequencyBodyGyroscope_std_Y
        - frequencyBodyGyroscope_std_Z
        - frequencyBodyAccelerometerMagnitude_mean
        - frequencyBodyAccelerometerMagnitude_std
        - frequencyBodyBodyAccelerometerJerkMagnitude_mean
        - frequencyBodyBodyAccelerometerJerkMagnitude_std
        - frequencyBodyBodyGyroscopeMagnitude_mean
        - frequencyBodyBodyGyroscopeMagnitude_std
        - frequencyBodyBodyGyroscopeJerkMagnitude_mean
        - frequencyBodyBodyGyroscopeJerkMagnitude_std 


- **averageData**
    - Description: data frame with the average of each variable for each activity 
    and each subject.
    - Size: 180 observations of 68 variables
    - Variables: this data frame contains the same variables as **data** but taking
    the mean of observations summarized by activity and subject.


## About the code

The code included in **functions_run_analysis.R** and **run_analysis.R** files is well
documented and organized. I hope they are self explained and easy to read.


### License of the original data used

The original dataset and this explanation about the original variables are property of the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
