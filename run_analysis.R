#Reads in data. Must be in home folder of data.
features <- read.table("features.txt")

setwd("test")
subject.test <- read.table("subject_test.txt")
activity.test <- read.table("y_test.txt")
data.test <- read.table("X_test.txt")
setwd("..")

setwd("train")
subject.train <- read.table("subject_train.txt")
activity.train <- read.table("y_train.txt")
data.train <- read.table("X_train.txt")
setwd("..")

#Sets column names of data frames read in above.
colnames(data.test) <- features$V2
colnames(data.train) <- features$V2

colnames(subject.test)[1] <- "Subject"
colnames(subject.train)[1] <- "Subject"

colnames(activity.test)[1] <- "Activity"
colnames(activity.train)[1] <- "Activity"

#Combines all test data frames into one data frame. Does the same for the train data frames.
data.test <- cbind(subject.test, activity.test, data.test)
data.train <- cbind(subject.train, activity.train, data.train)

#Merges test and train data frames.
data.combined <- rbind(data.test, data.train)

#Orders merged data frame above first by "Subject" and then by "Activity".
data.combined <- data.combined[order(data.combined$Subject, data.combined$Activity), ]

#Creates vector that will be used to subset data.combined to contain just mean and standard deviation data.
subset.vector <- c(1:8, 43:48, 83:88, 123:128, 163:168, 203, 204, 216, 217, 229, 230, 242, 243, 255, 256, 268:273,
                   347:352, 426:431, 505, 506, 518, 519, 531, 532, 544, 545)

#Creates a subsetted data frame from merged data frame containg only mean and standard deviation data.
data.mean_std.subset <- data.combined[ ,subset.vector]

#Assigns appropriate names to activity identifiers.
data.mean_std.subset$Activity[data.mean_std.subset$Activity == "1"] <- "Walking"
data.mean_std.subset$Activity[data.mean_std.subset$Activity == "2"] <- "Walking Upstairs"
data.mean_std.subset$Activity[data.mean_std.subset$Activity == "3"] <- "Walking Downstairs"
data.mean_std.subset$Activity[data.mean_std.subset$Activity == "4"] <- "Sitting"
data.mean_std.subset$Activity[data.mean_std.subset$Activity == "5"] <- "Standing"
data.mean_std.subset$Activity[data.mean_std.subset$Activity == "6"] <- "Laying"

#Saves column names from data.mean_std.subset data frame as a vector.
colNames <- names(data.mean_std.subset)

#Loop which renames colName entries 3-68 to include "Mean of" before the column label
for(i in 3:68)
{
     colNames[i] <- paste("Mean of", colNames[i])
}

#Creates empty data frame to hold data from column means
data.colMean <- data.frame(matrix(vector(), 0 , 68))
colnames(data.colMean) <- colNames

#Loop which calculates column means for each subject by activity and merges these sums with the data.colMean
#data frame created above.
for(i in 1:30)
{
     data.mean_std.isubset <- data.mean_std.subset[data.mean_std.subset$Subject == i, ]
     
     data.mean_std.iWalking <- data.mean_std.isubset[data.mean_std.isubset$Activity == "Walking", ]
     colMeans.iWalking <- colMeans(data.mean_std.iWalking[ ,3:68])
     colMeans.iWalking <- data.frame(matrix(c(i, "Walking", colMeans.iWalking), 1, 68))
     colnames(colMeans.iWalking) <- colNames
     
     data.mean_std.iWalkingUp <- data.mean_std.isubset[data.mean_std.isubset$Activity == "Walking Upstairs", ]
     colMeans.iWalkingUp <- colMeans(data.mean_std.iWalkingUp[ ,3:68])
     colMeans.iWalkingUp <- data.frame(matrix(c(i, "Walking Upstairs", colMeans.iWalkingUp), 1, 68))
     colnames(colMeans.iWalkingUp) <- colNames
     
     data.mean_std.iWalkingDown <- data.mean_std.isubset[data.mean_std.isubset$Activity == "Walking Downstairs", ]
     colMeans.iWalkingDown <- colMeans(data.mean_std.iWalkingDown[ ,3:68])
     colMeans.iWalkingDown <- data.frame(matrix(c(i, "Walking Downstairs", colMeans.iWalkingDown), 1, 68))
     colnames(colMeans.iWalkingDown) <- colNames
     
     data.mean_std.iSitting <- data.mean_std.isubset[data.mean_std.isubset$Activity == "Sitting", ]
     colMeans.iSitting <-colMeans(data.mean_std.iSitting[ ,3:68])
     colMeans.iSitting <- data.frame(matrix(c(i, "Sitting", colMeans.iSitting), 1, 68))
     colnames(colMeans.iSitting) <- colNames
     
     data.mean_std.iStanding <- data.mean_std.isubset[data.mean_std.isubset$Activity == "Standing", ]
     colMeans.iStanding <- colMeans(data.mean_std.iStanding[ ,3:68])
     colMeans.iStanding <- data.frame(matrix(c(i, "Standing", colMeans.iStanding), 1, 68))
     colnames(colMeans.iStanding) <- colNames
     
     data.mean_std.iLaying <- data.mean_std.isubset[data.mean_std.isubset$Activity == "Laying", ]
     colMeans.iLaying <- colMeans(data.mean_std.iLaying[, 3:68])
     colMeans.iLaying <- data.frame(matrix(c(i, "Laying", colMeans.iLaying), 1, 68))
     colnames(colMeans.iLaying) <- colNames
     
     data.colMean <- rbind(data.colMean, colMeans.iWalking, colMeans.iWalkingUp, colMeans.iWalkingDown, colMeans.iSitting,
                        colMeans.iStanding, colMeans.iLaying)
}

#Writes the data.colMean data frame to a text file called "Column Means Data" to the current working directory.
write.table(data.colMean, file = "Column Means Data.txt", row.names = FALSE)