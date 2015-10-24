
### Project Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (**walking,** **walkingUpstairs**, **walkingDownstairs**, **sitting,** **standing**, **laying**) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

### Variable Description

The variable selected for this dataset come from the accelerometer from the Samsung Galaxy S Smartphone. The time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.

**1.  subjectID:** The class of variable is integer. Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  
**2. activityID:**  The variable was coded as factor and represent as class labels with their activity name.  
**3. tBodyAcc-XYZ:**  The class of variable is numeric. In this variable name has 4 level: Time - Body- Acceleration- 3-axial signal.  
**4. tGravityAcc-XYZ:** The class of variable is numeric. In this variable name has 4 level: Time -Gravity - Acceleration- 3-axial signal.  
 **5. tBodyAccJerk-XYZ :**The class of variable is numeric. In this variable name has 5 level: Time -Body - Acceleration- Jerk (the body linear acceleration and angular velocity were derived in time to obtain Jerk signals)- 3-axial signal.  
 **6. tBodyGyro-XYZ:** The class of variable is numeric. In this variable name has 4 level: Time -Body - Gyroscope- 3-axial signal.  
 **7. tBodyGyroJerk-XYZ:** The class of variable is numeric. In this variable name has 5 level: Time -Body - Gyroscope-Jerk-3-axial signal.  
 **8. tBodyAccMag:** The class of variable is numeric. In this variable name has 4 level: Time - Body- Acceleration- Magnitude.     
 **9. tGravityAccMag:**The class of variable is numeric. In this variable name has 4 level: Time -Gravity - Acceleration- Magnitude.     
 **10. tBodyAccJerkMag:**The class of variable is numeric. In this variable name has 5 level: Time - Body- Acceleration- Jerk-Magnitude.   
 **11. tBodyGyroMag:**The class of variable is numeric. In this variable name has 4 level: Time -Body - Gyroscope- Magnitude.    
 **12. tBodyGyroJerkMag:**The class of variable is numeric. In this variable name has 5 level: Time -Body - Gyroscope-Jerk-Magnitude.

 A Fast Fourier Transform (FFT) was applied to some of these signals. (Note the 'f' to indicate frequency domain signals). 
  
 **13. fBodyAcc-XYZ:** The class of variable is numeric. In this variable name has 4 level: Frequency  - Body- Acceleration- 3-axial signal.    
 **14. fBodyAccJerk-XYZ** The class of variable is numeric. In this variable name has 5 level: Frequency - Body- Acceleration- Jerk- 3-axial signal.      
 **15. fBodyGyro-XYZ:**  The class of variable is numeric. In this variable name has 4 level: Frequency  -Body - Gyroscope- 3-axial signal.   
 **16. fBodyAccMag:** The class of variable is numeric. In this variable name has 4 level: Frequency - Body- Acceleration- Magnitude.     
 **17. fBodyAccJerkMag:** The class of variable is numeric. In this variable name has 5level: Frequency - Body- Acceleration- Jerk- Magnitude.     
 **18. fBodyGyroMag:**The class of variable is numeric. In this variable name has 4 level: Frequency -Body - Gyroscope- Magnitude.     
 **19. fBodyGyroJerkMag:** The class of variable is numeric. In this variable name has 5 level: Frequency -Body - Gyroscope-Jerk- Magnitude.
  

###Study design and data processing

####Collection of the raw data    
[dataset.zip][1] You can download zip file from this link.

#### Original (raw) data 

[Company site][2]  A full description is available at the site where the data was obtained.       

### Way of create the dataset in working directory
 1. Download zip file from above link with help of download.file () function.
 2. Unzip file with unzip () function and set directory in working directory.

###The dataset includes the following files:

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

###Description of the variables in the tinyData.txt file   

 - Dimension : 180 observation of 68 variable.    
 -  Format : The format of dataset is wide because every variable column is unique and give specific information.     
 - There are 30 subject who carried out the experiment in first column.
 - A 66-feature vector with time and frequency domain variables (not including subjectID and activityID). 


  [1]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  [2]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

