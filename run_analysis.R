library(tibble)
library(dplyr)

# Read features and tidy variable names
features <- read.table("getdata_projectfiles_UCI HAR Dataset/features.txt")
var_names <- features[,2]

# Read and create train dataset
data_train <- read.table("getdata_projectfiles_UCI HAR Dataset/train/X_train.txt")
activity_train <- read.table("getdata_projectfiles_UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("getdata_projectfiles_UCI HAR Dataset/train/subject_train.txt")
data_train <- cbind(subject_train, activity_train, data_train)
colnames(data_train) <- c("subject", "activity", var_names)
data_train <- data_train %>% add_column(set = "train", .after = "activity") 

# Read and create test dataset
data_test <- read.table("getdata_projectfiles_UCI HAR Dataset/test/X_test.txt")
activity_test <- read.table("getdata_projectfiles_UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("getdata_projectfiles_UCI HAR Dataset/test/subject_test.txt")
data_test <- cbind(subject_test, activity_test, data_test)
colnames(data_test) <- c("subject", "activity", var_names)
data_test <- data_test %>% add_column(set = "test", .after = "activity") 

# Merge train and test datasets into one
data <- rbind(data_train, data_test)
data$activity <- as.factor(data$activity)
levels(data$activity) <- c("walking", "walking_upstairs", "walking_downstairs", 
                           "sitting", "standing", "laying")
rm(data_train, data_test)

# Extract only the measurements on the mean and standard deviation for each 
# measurement
index_1 <- grep("\\bmean()\\b",colnames(data))
index_2 <- grep("\\bstd()\\b",colnames(data))
index <- sort(c(1, 2, index_1, index_2))
data_1 <- data[,index]

# Create an independent tidy data set with the average of each variable for each 
# activity and each subject
data_2 <- data_1 %>% group_by(subject, activity) %>% 
    summarize( across(everything(), list(mean)) ) %>% as.data.frame()

var_names <- colnames(data_1)[3:ncol(data_1)]
var_names <- gsub("\\()", "", var_names) ## Remove parentheses
var_names <- gsub("\\(", "_", var_names)
var_names <- gsub("\\)", "", var_names)
var_names <- gsub("-","_", var_names)  ## remove dashes
var_names <- gsub(",","_", var_names)  ## remove commas
var_names <- tolower(var_names)
colnames(data_2)[3:ncol(data_2)] <- var_names

# Write data
write.table(data_2, "dataout.txt", row.names = FALSE, sep = "\t", 
            quote = FALSE )
