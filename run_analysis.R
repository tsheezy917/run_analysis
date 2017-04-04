## importing the data

features <- read.delim("~/Coursera/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, header = FALSE)
trainlabels <- read.delim("~/Coursera/UCI HAR Dataset/train/y_train.txt", header = FALSE)
testset <- read.delim("~/Coursera/UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE, sep = "", header = FALSE)
trainset <- read.delim("~/Coursera/UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE, sep = "", header = FALSE)
testlabels <- read.delim("~/Coursera/UCI HAR Dataset/test/y_test.txt", header = FALSE)


## create char vector from features data frame
fcols <- features$V1

## shorten the col names 
fcols <- gsub("\\(\\)-", "", fcols)
fcols <- gsub("Body", "B", fcols)

## then assign the vector fcols to testset and trainset
names(testset) <- fcols
names(trainset) <- fcols

##create factor variable for testlabels with descriptive activity names
testlevels <- cut(testlables$V1, breaks = 6, labels = c("walking", "walkingUS", "walkingDS", "sitting", "standing", "laying"))
trainlevels <- cut(trainlabels$V1, breaks = 6, labels = c("walking", "walkingUS", "walkingDS", "sitting", "standing", "laying"))

##create testdf and traindf and convert to tbl for easy manipulation
testdf <- cbind(testlevels, testset)
traindf <- cbind(trainlevels, trainset)
testdf <- tbl_df(testdf)
traindf <- tbl_df(traindf)

##select mean columns 
dfmeans <- grep("mean", names(testdf))
dfstd <- grep("std", names(testdf))
test_stats<- select(testdf, testlevels, dfmeans, dfstd)
train_stats <- select(traindf, trainlevels, dfmeans, dfstd)

## add column to indicate test set and train set, then combine data frames 
mutate(test_stats, set = "test")
mutate(train_stats, set = "training")
test_stats <- rename(test_stats, activity = testlevels)
train_stats <- rename(train_stats, activity = trainlevels)
test_train <- rbind(test_stats, train_stats)

## clean up col names
setnames <- names(test_train)
setnames <- gsub("\\(\\)", "", setnames2)
setnames <- gsub("[0-9]", "", setnames)


## calculate means for all the activities then create 
VarMeans <- colMeans(activityGroups[,2:80])
walkMean <- colMeans(activityGroups[activityGroups$activity == "walking", 2:80])
walkUSMean <- colMeans(activityGroups[activityGroups$activity == "walkingUS", 2:80])
walkDSMean <- colMeans(activityGroups[activityGroups$activity == "walkingDS", 2:80])
standingMean <- colMeans(activityGroups[activityGroups$activity == "standing", 2:80])
sittingMean <- colMeans(activityGroups[activityGroups$activity == "sitting", 2:80])
layingMean <- colMeans(activityGroups[activityGroups$activity == "laying", 2:80])

meanDF <- rbind(walkMean, walkDSMean, walkUSMean, standingMean, sittingMean, layingMean, VarMeans)
meanrows <- c("Walk mean", "Walk Upstairs mean", "Walk downstairs mean", "Standing mean", "Sitting mean", "Laying mean", "VarMean")
row.names(meanDF) <- meanrows

