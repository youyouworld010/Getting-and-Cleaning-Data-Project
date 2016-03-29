### Read in the test data file into R
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
### Read in the training data file into R
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
### Read in the label files (this file contains the number of the activities that subjects performed) for the training and test data respectively in R
testlabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
trainlabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
### Read in the activity label file in R
activitylabel <- read.table("./UCI HAR Dataset/activity_labels.txt")
### Read in all the features (the file contains feature variables)
features <- read.table("./UCI HAR Dataset/features.txt")
### Read in the subject file (subjects 1-30) for the training and test data respectively in R
testsub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
trainsub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
### Combine testsub, testlabel and test together using cbind function
testall <- cbind(testsub, testlabel, test)
### Combine trainsub, trainlabel and train together using cbind function
trainall <- cbind(trainsub, trainlabel, train)
### Step1: Combine testall and trainall data together using rbind function
all <- rbind(trainall, testall)
### Add variable names to the columns in the "all" dataset
colnames(all) <- c("subjectid", "numberofactivity", as.character(features[,2]))
### Step2: Extract only the measurements on the mean and standard deviation for each measurement
### Only the variables that contain mean() and std() will be retained in the new data. There are some variables
### that contain meanFreq(); those variables won't be retained in the subset dataset as they are not mean and
### calculated differently from the mean.
subsetvar <- grep('mean\\()|std\\()', names(all))
subsetall <- all[,c(1,2,subsetvar)]
### Step3: Use descriptive activity names to name the activities in the data set
subsetall$numberofactivity[subsetall$numberofactivity==1] <- "WALKING"
subsetall$numberofactivity[subsetall$numberofactivity==2] <- "WALKING_UPSTAIRS"
subsetall$numberofactivity[subsetall$numberofactivity==3] <- "WALKING_DOWNSTAIRS"
subsetall$numberofactivity[subsetall$numberofactivity==4] <- "SITTING"
subsetall$numberofactivity[subsetall$numberofactivity==5] <- "STANDING"
subsetall$numberofactivity[subsetall$numberofactivity==6] <- "LAYING"
### Step4: Appropriately label the data set with descriptive variable names
### I understand this step as to spell out all the acronyms in the variable
### names. So the "t", "f", "Acc", "Gyro" and "Mag" in the variable
### names were spelt out. "mean" and "std" are pretty explicit to most of the 
### people, so they were not spelt out fully.
names(subsetall)
library(dplyr) ### Load the dplyr package in order to use the rename function
subsetall <- rename(subsetall, activity=numberofactivity)
names(subsetall) <- sub('^[t]','time', names(subsetall))
names(subsetall) <- sub('^[f]','frequency', names(subsetall))
names(subsetall) <- sub('Acc','Acceleration', names(subsetall))
names(subsetall) <- sub('Gyro','Gyroscope', names(subsetall))
names(subsetall) <- sub('Mag','Magnitude', names(subsetall))
### Step5: Create a second, independent tidy data set with the average of each variable for each activity and each subject
UCIHARFinal <- aggregate(subsetall[,-(1:2)],by=list(subsetall$subjectid,subsetall$activity),mean)
UCIHARFinal <- rename(UCIHARFinal, subjectid=Group.1, activity=Group.2)
### Write out the UCIHARFinal dataset to the working directory.
write.table(UCIHARFinal, file='UCIHARFinal.txt', row.name=FALSE)