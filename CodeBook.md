# Data Sources
The sources of data come from UCI HAR Dataset, which was derived from the experiments of 30 volunteers performing activites wearing a smartphone on the waist. The data contains 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz, measured by its embedded accelerometer and gyroscope. 

# Identifiers (Variables) 
## Subject 
Identifies the participants who performed the activities. 
Subject is numbered from 1 to 30. 

## Activity  
The activity performed by participants. 

Activities include: 
1) Laying, 2) Sitting, 3) Standing, 4) Walking, 5) Walking_Downstairs, and 6) Walking_Upstairs 

## Measurement Variables 
Only measurements containing mean() and std() from the origial dataset were retained. X,Y,Z represent the three spatial axes. 

Examples: 
- tBodyAcc-mean()-X 
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z

## Final Dataset 
The final independent, tidy dataset include 
- 180 observations
- 30 subjects 
- 68 variables (including subject and activity) 
- 66 measurement variables
- 6 activities 
