# Data Sources
The sources of data come from UCI HAR Dataset, which was derived from the experiments of 30 volunteers performing activites wearing a smartphone on the waist. The data contains 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz, measured by its embedded accelerometer and gyroscope. 

# Identifiers (Variables) 
## Subject 
Identifies the participants who performed the activities. 
There are 30 subjects, and each one is numbered from 1 to 30. 

## Activity  
The activity performed by participants. 

Activities include: 
1) Laying, 2) Sitting, 3) Standing, 4) Walking, 5) Walking_Downstairs, and 6) Walking_Upstairs 

## Measurement Variables 
#Component             #Meaning
t/f                     time-domain / frequency-domain measurement 
BodyAcc                 Body acceleration 
GravityAcc              Gravity acceleration 
BodyGyro                Body angular velocity 
Jerk                    Measurement derived from the rate of change
Mag                     Magnitude of a three-dimensional signal 
mean()                  Mean feature in the original dataset
std()                   Standard-deviation feature in the original dataset 
X, Y, Z                 Spatial axes 

#ID Variables
 [1] "subject"                    
 [2] "activity"  

#Measurement Variables
 [1] "tBodyAcc-mean()-X"          
 [2] "tBodyAcc-mean()-Y"          
 [3] "tBodyAcc-mean()-Z"          
 [4] "tGravityAcc-mean()-X"       
 [5] "tGravityAcc-mean()-Y"       
 [6] "tGravityAcc-mean()-Z"       
 [7] "tBodyAccJerk-mean()-X"      
 [8] "tBodyAccJerk-mean()-Y"      
 [9] "tBodyAccJerk-mean()-Z"      
[10] "tBodyGyro-mean()-X"         
[11] "tBodyGyro-mean()-Y"         
[12] "tBodyGyro-mean()-Z"         
[13] "tBodyGyroJerk-mean()-X"     
[14] "tBodyGyroJerk-mean()-Y"     
[15] "tBodyGyroJerk-mean()-Z"     
[16] "tBodyAccMag-mean()"         
[17] "tGravityAccMag-mean()"      
[18] "tBodyAccJerkMag-mean()"     
[19] "tBodyGyroMag-mean()"        
[20] "tBodyGyroJerkMag-mean()"    
[21] "fBodyAcc-mean()-X"          
[22] "fBodyAcc-mean()-Y"          
[23] "fBodyAcc-mean()-Z"          
[24] "fBodyAccJerk-mean()-X"      
[25] "fBodyAccJerk-mean()-Y"      
[26] "fBodyAccJerk-mean()-Z"      
[27] "fBodyGyro-mean()-X"         
[28] "fBodyGyro-mean()-Y"         
[29] "fBodyGyro-mean()-Z"         
[30] "fBodyAccMag-mean()"         
[31] "fBodyBodyAccJerkMag-mean()" 
[32] "fBodyBodyGyroMag-mean()"    
[33] "fBodyBodyGyroJerkMag-mean()"
[34] "tBodyAcc-std()-X"           
[35] "tBodyAcc-std()-Y"           
[36] "tBodyAcc-std()-Z"           
[37] "tGravityAcc-std()-X"        
[38] "tGravityAcc-std()-Y"        
[39] "tGravityAcc-std()-Z"        
[40] "tBodyAccJerk-std()-X"       
[41] "tBodyAccJerk-std()-Y"       
[42] "tBodyAccJerk-std()-Z"       
[43] "tBodyGyro-std()-X"          
[44] "tBodyGyro-std()-Y"          
[45] "tBodyGyro-std()-Z"          
[46] "tBodyGyroJerk-std()-X"      
[47] "tBodyGyroJerk-std()-Y"      
[48] "tBodyGyroJerk-std()-Z"      
[49] "tBodyAccMag-std()"          
[50] "tGravityAccMag-std()"       
[51] "tBodyAccJerkMag-std()"      
[52] "tBodyGyroMag-std()"         
[53] "tBodyGyroJerkMag-std()"     
[54] "fBodyAcc-std()-X"           
[55] "fBodyAcc-std()-Y"           
[56] "fBodyAcc-std()-Z"           
[57] "fBodyAccJerk-std()-X"       
[58] "fBodyAccJerk-std()-Y"       
[59] "fBodyAccJerk-std()-Z"       
[60] "fBodyGyro-std()-X"          
[61] "fBodyGyro-std()-Y"          
[62] "fBodyGyro-std()-Z"          
[63] "fBodyAccMag-std()"          
[64] "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-std()"     
[66] "fBodyBodyGyroJerkMag-std()" 

## Final Dataset 
The final independent, tidy dataset include 
- 180 observations (30 subjects measured in 6 activities, 30 x 6) 
- 30 subjects 
- 68 variables (including subject and activity) 
- 66 measurement variables
- 6 activities 
