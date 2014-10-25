Getting-and-Cleaning-Data-Project
=================================

# Course Project Description

The goal is to prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


# How the script works 

I wrote my code with lots of comments explaining each line. 
Below, I present a summary step by step about my script:

1) Set the path to the Folder, where the data to be analyzed is.

2) Create a vector with the names of the Features

3) Read the Descriptive Activity Labels and create two vectors: numeric and descriptive

4) Read the Training Dataset, Activity Labels and the Subjects Vector

5) Read the Test Dataset, Activity Labels and the Subjects Vector

6) TASK 1: Merges the training and the test sets to create one data set.
- I also write the head to the complete dataset

7) TASK 2: Extracts only the measurements on the mean and standard deviation for each measurement.
- I look for all head names with "mean" and "std"

8) TASK 3: Uses descriptive activity names to name the activities in the data set
- I create a vector with all activity names in the data set.
- I create a set of temporary data with this information

9) TASK 4: Appropriately labels the data set with descriptive variable names. 
- I change the numeric labels for descriptive labels

10) TASK 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- I create a dataset with: 
  First column: subject 
  Second column: descriptive activity 
  From the third column to the last column: all the average features

- The "for-loop" collects all possible combinations of "subject-activity" and calculates the average
- join all calculated information in an unique data frame
- save the solution to a *.txt File, named "tidy_data.txt"


