Code Book       
====================

The original Data (data set and explanations) is contained in many Files, but the main information were separated into six files:

1) subject_test.txt and subject_train.txt: (values in the range from 1 to 30)

2) y_test.txt and y_train.txt: activities: (numeric labels between 1 and 6 corresponding to WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING)

3) X_test.txt and X_train.txt: all features. The complete list of variables of each feature vector is available in 'features.txt'

Below, I explain what my result (the File „tidy_data.txt“) contains. This tidy data set contains the average of each extracted variable (only the measurements on the mean and standard deviation for each measurement) for each activity and each subject. So as a result the final file has:

- First Column (the subjects). The values can be:
1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 and 30.


- Second Column (the activities). The values can be:
LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS and WALKING_UPSTAIRS. 

- From the Column=3 to the Column=81 (average features). Each os these columns contain the AVERAGE of each extracted variable from the original Dataset (these extracted variables are only the measurements on the mean and standard deviation for each measurement). In my „tidy_data.txt“ the column names are:

[03] "tBodyAcc-mean()-X"
[04] "tBodyAcc-mean()-Y"
[05] "tBodyAcc-mean()-Z"
[06] "tBodyAcc-std()-X"
[07] "tBodyAcc-std()-Y"
[08] "tBodyAcc-std()-Z"
[09] "tGravityAcc-mean()-X"
[10] "tGravityAcc-mean()-Y"
[11] "tGravityAcc-mean()-Z"
[12] "tGravityAcc-std()-X"
[13] "tGravityAcc-std()-Y"
[14] "tGravityAcc-std()-Z"             
[15] "tBodyAccJerk-mean()-X"          
[16] "tBodyAccJerk-mean()-Y"           
[17] "tBodyAccJerk-mean()-Z"           
[18] "tBodyAccJerk-std()-X"           
[19] "tBodyAccJerk-std()-Y"            
[20] "tBodyAccJerk-std()-Z"            
[21] "tBodyGyro-mean()-X"             
[22] "tBodyGyro-mean()-Y"              
[23] "tBodyGyro-mean()-Z"              
[24] "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"               
[26] "tBodyGyro-std()-Z"               
[27] "tBodyGyroJerk-mean()-X"         
[28] "tBodyGyroJerk-mean()-Y"          
[29] "tBodyGyroJerk-mean()-Z"          
[30] "tBodyGyroJerk-std()-X"          
[31] "tBodyGyroJerk-std()-Y"           
[32] "tBodyGyroJerk-std()-Z"           
[33] "tBodyAccMag-mean()"             
[34] "tBodyAccMag-std()"               
[35] "tGravityAccMag-mean()"           
[36] "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"          
[38] "tBodyAccJerkMag-std()"           
[39] "tBodyGyroMag-mean()"            
[40] "tBodyGyroMag-std()"              
[41] "tBodyGyroJerkMag-mean()"         
[42] "tBodyGyroJerkMag-std()"         
[43] "fBodyAcc-mean()-X"               
[44] "fBodyAcc-mean()-Y"               
[45] "fBodyAcc-mean()-Z"              
[46] "fBodyAcc-std()-X"                
[47] "fBodyAcc-std()-Y"                
[48] "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"           
[50] "fBodyAcc-meanFreq()-Y"           
[51] "fBodyAcc-meanFreq()-Z"          
[52] "fBodyAccJerk-mean()-X"           
[53] "fBodyAccJerk-mean()-Y"           
[54] "fBodyAccJerk-mean()-Z"          
[55] "fBodyAccJerk-std()-X"            
[56] "fBodyAccJerk-std()-Y"            
[57] "fBodyAccJerk-std()-Z"           
[58] "fBodyAccJerk-meanFreq()-X"       
[59] "fBodyAccJerk-meanFreq()-Y"       
[60] "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"              
[62] "fBodyGyro-mean()-Y"              
[63] "fBodyGyro-mean()-Z"             
[64] "fBodyGyro-std()-X"               
[65] "fBodyGyro-std()-Y"               
[66] "fBodyGyro-std()-Z"              
[67] "fBodyGyro-meanFreq()-X"          
[68] "fBodyGyro-meanFreq()-Y"          
[69] "fBodyGyro-meanFreq()-Z"         
[70] "fBodyAccMag-mean()"              
[71] "fBodyAccMag-std()"               
[72] "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"      
[74] "fBodyBodyAccJerkMag-std()"       
[75] "fBodyBodyAccJerkMag-meanFreq()" 
[76] "fBodyBodyGyroMag-mean()"         
[77] "fBodyBodyGyroMag-std()"          
[78] "fBodyBodyGyroMag-meanFreq()"    
[79] "fBodyBodyGyroJerkMag-mean()"     
[80] "fBodyBodyGyroJerkMag-std()"      
[81] "fBodyBodyGyroJerkMag-meanFreq()"




