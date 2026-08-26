# Getting and Cleaning Data Course Project
This repository has my course project using the UCI Human Activity Recognition with the use of datasets from smartphones 

## Files
- 'run.analysis.R': Performs the data cleaning and transformations including merging
- 'CodeBook.md': describes the variables of the final tidy, independent dataset with average values of each measurement variable grouped by subject and acitvity 

## Analysis
The 'run.analysis.R' script: 
1. Read the subject, y (activity), and X (measurement variables) for both train and test datasets. 
2. Merge subject, y, and X accordingly for both train and test datasets.
3. Merge the train and test datasets.
4. Change the column names of X with names of the features_txt.
5. Switch the column names of y with the name, "activity".
6. Substitute activity codes with descriptive activity names.
7. Extract columns that have "mean()" and "std()". 
8. Group by subject and activity.
9. Get the tidy data with the average values of the measurement variables with "mean()" and "std()"
