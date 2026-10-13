getwd()

# incorporating names from "features.txt" to X_test dataset
features <- read.table("UCI HAR Dataset/features.txt")
X_test <- read.table("X_test.txt")
names(X_test) <- features$V2
names(X_test)

# substituting numbers in y_test to activity names from "activity_label.txt" and adding "activity" to y-test column
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
positions_test <- match(y_test$V1, activity_labels$V1)
activity_names_test <- activity_labels$V2[positions_test] 
y_test$V1 <- activity_names_test
names(y_test) <- "activity"

# incorporating "subject" to subject_test dataset column
subject_test <- read.table("subject_test.txt")
names(subject_test) <- "subject"

# combining the test datasets
test_data <- cbind(subject_test, y_test, X_test)
test_data

# incorporating names from "features.txt" to X_train dataset
features <- read.table("UCI HAR Dataset/features.txt")
X_train <- read.table("X_train.txt")
names(X_train) <- features$V2

# substituting numbers in y_train to activity names from "activity_label.txt" and adding "activity" to y-train column
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
y_train <- read.table("y_train.txt")
positions_train <- match(y_train$V1, activity_labels$V1)
activity_names_train <- activity_labels$V2[positions_train] 
y_train$V1 <- activity_names_train
names(y_train) <- "activity"

# incorporating "subject" to subject_train column name 
subject_train <- read.table("subject_train.txt")
names(subject_train) <- "subject"

# combining the train datasets
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
