Code Book - MOOC Getting and Cleaning Data Project

Data Location

The original data was obtained from the following URL:
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

a description of the data is available here:
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Variable list and descriptions

Varible Name	| Description
subjectid	| ID of each subject recorded in the data set. 
activitylabel	| ID of the activity associated with each data entry. 
trainData	| Training data set as loaded from "./data/train/X_train.txt".
testData	| Test data set as loaded from "./data/test/X_test.txt".
finalData	| The test and training data sets combined into a single data table. 
dataNames	| Names of each data field as loaded from "features.txt".
tidyData	| Aggregating the finalData set based on the subjectid and activitylabel (rows are averaged). 

Analysis Process

The run_analysis.R script performs the following steps: 

1. Merges the training and the test sets to create one data set.

The train and test data were loaded from the respective files (see file names above). The training data labels were loaded from 'train/y_train.txt' and the test data labels were loaded from 'test/y_test.txt'. The data labels were combined with the respective data sets using cbind() and the training and test data sets were combined using rbind(). The resulting data set was called finalData.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

The names of each data column were loaded from 'features.txt'. The data columns corresponding to the mean and standard deviation were identified using grep(). All data columns not corresponding to the mean and standard deviation were dropped from finalData. 

3. Uses descriptive activity names to name the activities in the data set.

The descriptive activity names were loaded from 'activity_labels.txt'. The activityLabel colum of finalData was updated based on the descriptive activity names.

4. Appropriately labels the data set with descriptive activity names.

As per instructions. 

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

aggregate() was used to find the average of each varible for each ativity & subject combindation. The resulting data set called 'tidyData' was written to a CSV file using write.csv()





