==================================================================
Coursera: Getting and Cleaning Data 
Course Project
Date: March 16, 2023
==================================================================

This project involves using the provided dataset 'getdata_projectfiles_UCI HAR Dataset', cleaning and tidying the data using an R script, and performing analysis to generate another independent tidy dataset. The submission involves the following components:

- 'getdata_projectfiles_UCI HAR Dataset': Folder containing the provided dataset. This dataset consists of summary data (mean, standard deviation, etc.) from sensor signals (accelerometer and gyroscope) recorded during experiments that have been carried out with a group of 30 volunteers. Each person performed six activities (walking, walking_upstairs, walking_downstairs, sitting, standing, laying) wearing a smartphone on the waist. The dataset has been partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. Additional details on the dataset can be found 'getdata_projectfiles_UCI HAR Dataset\README.txt'.

- 'run_analysis.R': R script that reads the data in 'getdata_projectfiles_UCI HAR Dataset' and performs	the following: 
	- Merges the training and the test datasets to create one dataset. 
	- Tidies the dataset by using descriptive activity names and descriptive variable names.
	- Extracts only the measurements on the mean and standard deviation for each measurement.
	- Creates a second, independent tidy dataset with the average of each variable for each activity and each subject.
	- Writes out the second dataset to a text file ('dataout.txt')
	
	NOTE: 'getdata_projectfiles_UCI HAR Dataset' should be placed in the same working directory as 'run_analysis.R' to run the script and generate the output file
	
- 'dataout.txt': Tidy dataset obtained from the running the script 'run_analysis.R'.
	
- 'CodeBook.md': Code book describing the variables in 'dataout.txt' and the analysis performed to obtain the data.

==================================================================