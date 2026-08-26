getwd()

data1 <- read.table("subject_test.txt")
data2 <- read.table("X_test.txt")
data3 <- read.table("y_test.txt")

test_data <- cbind(data1,data3,data2)

# incorporating names from features.txt to X_test dataset
features <- read.table("UCI HAR Dataset/features.txt")
X_test <- read.table("X_test.txt")
names(X_test) <- features$V2
names(X_test)

# incorporating "activity" to y_test dataset column
y_test <- read.table("y_test.txt")
names(y_test) <- "activity"

# substituting numbers in y_test to activity names acc. to "activity_label.txt"
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
positions <- match(y_test$activity, activity_labels$V1)
activity_names <- activity_labels$V2[positions] 
y_test$activity <- activity_names 

# incorporating "subject" to subject_test dataset column
subject_test <- read.table("subject_test.txt")
names(subject_test) <- "subject"

# combining the test sets 
test_data <- cbind(subject_test, y_test, X_test)
test_data

# incorporating names to X dataset
X_train <- read.table("X_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")
names(X_train) <- features$V2

# incorporating "activity" to y_train column
y_train <- read.table("y_train.txt")
names(y_train) <- "activity"

# substituting numbers to activity names for y_train dataset
positions_train <- match(y_train$activity, activity_labels$V1)
y_train$activity <- activity_labels$V2[positions_train]

# incorporating "subject" to subject_train column name 
subject_train <- read.table("subject_train.txt")
names(subject_train) <- "subject"

# combining datasets of train 
train_data <- cbind(subject_train, y_train, X_train)

# merging test and train datasets
train_test_data <- rbind(train_data, test_data)

# finding the measurements that have mean and standard deviation 
mean_cols <- grep("mean\\(\\)", names(train_test_data))
grep("mean\\(\\)", names(train_test_data), value = TRUE)

mean_test_train_data <- train_test_data[ , mean_cols]

std_cols <- grep("std\\(\\)", names(train_test_data))
std_test_train_data <- train_test_data[ , std_cols]

# combining the mean and std columns with subject and activity column 
id_cols <- which(names(train_test_data) %in% c("subject", "activity"))
keep_cols <- unique(c(id_cols, mean_cols, std_cols)) 
mean_std_data <- train_test_data[ , keep_cols]

# grouping by variables and creating independent tidy data 
library(dplyr)

tidy_data <- mean_std_data %>%
  group_by(subject, activity) %>%
  summarise(
    across(everything(), mean)
  )

write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)
