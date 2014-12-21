# Create one R script called run_analysis.R that does the following. 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
# Dec. 2014

# read the activity file
actDesc <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE);
actDescV <- as.vector(actDesc[[2]]);

# Prepare test data set
testD <- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE);
subj <- read.table("UCI HAR Dataset/test/subject_test.txt");
testD <- cbind(testD, factor(subj[[1]]));
act <- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE);
actf <- factor(act[[1]], labels=actDescV);
testD <- cbind(testD,actf);

# Prepare train data set
trainD <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE);
subj <- read.table("UCI HAR Dataset/train/subject_train.txt");
trainD <- cbind(trainD, factor(subj[[1]]));
act <- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE);
actf <- factor(act[[1]], labels=actDescV);
trainD <- cbind(trainD,actf);

# merge test data set with train data set
allD <- rbind(trainD, testD);

# read the features file and add to Header of the data set
features <- read.table("UCI HAR Dataset/features.txt", header=FALSE);
featureNames <- as.vector(features[[2]]);
names(allD) <- c(featureNames, "subject", "activity");

# Extracts only the measurements on the mean and standard deviation for each measurement. 
meanD <- allD[, grep("mean|std|^subject$|^activity$", names(allD))];
as.vector(meanD$subject);
as.vector(meanD$activity);








