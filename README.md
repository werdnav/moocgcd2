Getting and Cleaning Data Assignment

This project was completed as part of the MOOC course 'Getting and Cleaning Data'. The purpose was to demonstrate the collection, cleaning and preparation of a tidy data set. A description of the assignment scope and instructions is available at the Coursera website: 

https://class.coursera.org/getdata-005/human_grading/view/courses/972582/assessments/3/submissions

Project Data

The data used in this analysis was collected from a Samsung Galaxy S smartphone. A descrption of the data source, collection and preparation is available at the UCI archive: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

and the original data set is available here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Project Objectives

The objective of the project was to prepare a single R script named 'run_analysis.R' that performed the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The project also requested the participant prepare README.md and CodeBook.md files and upload the files to github. 

Steps to reproduce the results:   

Please use the following steps to reproduce my findings: 
1. load run_analysis.r in RStudio
2. Download and unzip the HAR DataSet into your working directory.
3. Modify the R script to match your working directory location. 
4. Run the R script. The tidy data set will be saved to your working directory.

Files

Readme.md - provides a summary of the project objectives, data location and steps required to reproduce the results. 
CodeBook.md - describes the variables, data and data transformations that were performed.
tidydata.txt - CSV file containing the final tidy data set.
