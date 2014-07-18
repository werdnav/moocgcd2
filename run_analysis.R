rm(list=ls())
setwd('/home/andrew/RAnalysis/UCI HAR Dataset/')

# load the training data set
trainData <- read.table('train/X_train.txt',stringsAsFactors=FALSE)
trainLabel <- read.table('train/y_train.txt',stringsAsFactors=FALSE)
trainSubject <-read.table('train/subject_train.txt',stringsAsFactors=FALSE)
trainData <- cbind(trainSubject,trainLabel,trainData)
colnames(trainData) <- c("subjectid","activitylabel")
rm(trainLabel,trainSubject)

# load the test data set
testData <- read.table('test/X_test.txt',stringsAsFactors=FALSE)
testLabel <- read.table('test/y_test.txt',stringsAsFactors=FALSE)
testSubject <-read.table('test/subject_test.txt',stringsAsFactors=FALSE)
testData <- cbind(testSubject,testLabel,testData)
colnames(testData) <- c("subjectid", "activitylabel")
rm(testLabel,testSubject)

# combine the test and training data and re-name the col as per features.txt
finalData <- rbind(trainData,testData)
dataNames <- read.table('features.txt', stringsAsFactors=FALSE)
colnames(finalData) <- c("subjectid","activitylabel",dataNames[,2])
rm(testData,trainData,dataNames)

# remove all bar the mean and standard deviation measurements
meanID <- grep('mean()',names(finalData))
meanFreqID <- grep('meanFreq()',names(finalData))
SDDataID <- grep('std()',names(finalData))
finalData <- finalData[c(1,2,meanID,meanFreqID,SDDataID)]

# use a descriptive activity name
activityNames <- read.table('activity_labels.txt', stringsAsFactors=FALSE)
colnames(activityNames) <- c("id","activityname")

for (i in 1:nrow(finalData)) {
#for (i in 1:100) {
  id <- finalData$activitylabel[i]
  finalData$activitylabel[i] <- activityNames[id,2]
}
rm(activityNames)

#  average of each variable for each activity and each subject.

tidyData <- aggregate(finalData[,names(finalData) != c('subjectid','activitylabel')],by=list(activitylabel=finalData$activitylabel,subjectid = finalData$subjectid),mean)

# export tidyData set
write.csv(tidyData, './tidydata.txt',append=FALSE)

