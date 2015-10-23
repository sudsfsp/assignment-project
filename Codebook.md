## Variable Description

The variable selected for this dataset come from the accelerometer from the Samsung Galaxy S smartphone. The time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.

**1.  subjectID:** The class of variable is numeric. Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  
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
  

##Study design and data processing

###Collection of the raw data    
[dataset.zip][1]

### Original (raw) data    

[Company site][2]  A full description is available at the site where the data was obtained.

##Creating the tidy datafile

###Guide to create the tidy data file    
 1. Download zip file from above link with help of download.file () function.
 2. Unzip file with unzip () function and set directory in working directory.   

###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()    

##Description of the variables in the tinyData.txt file
 - 180 observation of 68 variable.         
 - The format of dataset is wide.    
 - There are 30 subject who carried out the experiment.     
 - A 66-feature vector with time and frequency domain variables.      


  [1]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  [2]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

