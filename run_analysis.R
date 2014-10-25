############################################
# Getting and Cleaning Data Course Project #
############################################

# Set the path to the Folder, where the data to be analyzed is
setwd("~/Desktop/DataScientist/Getting_and_Cleaning_Data/DataFiles/UCI_HAR_Dataset")



# Create a vector with the names of the Features
features.file <- read.table("features.txt")
features.names <- as.vector(features.file$V2)

# Read the Descriptive Activity Labels and create two vectors: numeric and descriptive
activity.file <- read.table("activity_labels.txt")
activity.numeric <- as.vector(activity.file[,1])
activity.description <- as.vector(activity.file[,2])

###############################################
# Training Data
###############################################
# Read the Training Dataset, Activity Labels and the Subjects Vector
train.data.path <- "./train/"
train.data <- read.table(paste(train.data.path,"X_train.txt",sep=""),header=F)
train.label <- read.table(paste(train.data.path,"y_train.txt",sep=""), header=F)
train.subject <- read.table(paste(train.data.path,"subject_train.txt",sep=""), header=F)
train.all <- as.matrix(train.data)


###############################################
# Test Data
###############################################
# Read the Test Dataset, Activity Labels and the Subjects Vector
test.data.path <- "./test/"
test.data <- read.table(paste(test.data.path,"X_test.txt",sep=""),header=F)
test.label <- read.table(paste(test.data.path,"y_test.txt",sep=""), header=F)
test.subject <- read.table(paste(test.data.path,"subject_test.txt",sep=""), header=F)
test.all <- as.matrix(test.data)


###############################################
# 1. Merges the training and the test sets to create one data set.
###############################################
all.data <- rbind(train.all, test.all)

# I write the head to the complete dataset
colnames(all.data) <- features.names
        
###############################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
###############################################
# I look for all head names with "mean" and "std"
index.logical <- grepl("mean",features.names) | grepl("std",features.names)
data.mean.std1 <- all.data[,index.logical]

###############################################
# 3. Uses descriptive activity names to name the activities in the data set
###############################################
# I create a vector with all activity names in the data set.
# I create a set of temporary data with this information
activity <- c(unlist(train.label), unlist(test.label))
data.mean.std2 <- cbind(activity, data.mean.std1)

###############################################
# 4. Appropriately labels the data set with descriptive variable names. 
###############################################
# I change the numeric labels for descriptive labels
descriptive.activity <- vector()
for(i in (1:length(activity))){
        descriptive.activity[i] <- activity.description[activity[i]]
}

data.mean.std3 <- as.data.frame(data.mean.std2)
data.mean.std3[,1] <- descriptive.activity


###############################################
# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.
###############################################
# I create a dataset with: 
# First column: subject 
# Second column: descriptive activity 
# From the third column to the last column: all the average features
subject <- c(unlist(train.subject), unlist(test.subject))
data.mean.std4 <- cbind(subject, data.mean.std3)

# The "for-loop" collects all possible combinations of "subject-activity" and calculates the average
subject.unique <- sort(unique(data.mean.std4[, 1]))
activity.unique <- sort(unique(data.mean.std4[, 2]))
data.description <- vector()
data.means <- vector()

# Loop in the "subject"
for(i in (1:length(subject.unique))){
        subj <- subject.unique[i]
        # Loop in the activity
        for(j in (1:length(activity.unique))){
                activ <- activity.unique[j]
                # save the pair "subject-activity"
                data.description <- rbind(data.description, c(subj, activ) )
                # Select a new data with all specific combinations "subject-activity"
                logical.combination <- (data.mean.std4[, 1] == subj & data.mean.std4[, 2] == activ)
                data.auxiliar <- data.mean.std4[which(logical.combination),]
                # calculate the means of each column of the new data and save
                data.means <- rbind(data.means, colMeans(data.auxiliar[,(3:ncol(data.auxiliar))]) )
                
        }       
}

# join all calculated information in an unique data frame
sol <- cbind(data.description, data.means)
sol <- as.data.frame(sol)
colnames(sol)[c(1,2)] <- c("subject","activity")

# save the solution to a *.txt File, named "tidy_data.txt"
write.table(sol, "tidy_data.txt", sep="\t", row.name=FALSE)



