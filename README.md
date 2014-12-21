GettingCleaningDataProject
==========================
## Pipeline to run "run_analysis.R"
1. Assume your working directory is "GettingCleaningDataProject".  The following steps are all done in this directory

2. Download raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

3. The mac or window system should unzip the file into a directory as "UCI HAR Dataset" by clicking on the downloaded file.  For linux users, you can use 'unzip filename' to unzip the downloaded zip file. As a result, a directory "UCI HAR Dataset" will also be created with all the data files in it.

4. Move directory "UCI HAR Dataset" to your working directory "GettingCleaningDataProject"

5. Setup working directory in R or Rstudio to "/path/to/GettingCleaningDataProject".  The R command is 'setwd("/path/to/GettingCleaningDataProject")'
        
6. Enter R command "source run_analysis.R"

        The run_analysis.R script does the following:
        1. Merges the training ("train/X_train.txt"") and the test("test/X_test.txt"") sets to create one data set.
        
        2. Extracts only the measurements on the mean and standard deviation for each measurement.
        
        3. Uses descriptive activity names to name the activities in the data set defined in activity_labels.txt
        
        4. Appropriately labels the data set with descriptive variable names defined from features.txt. 
        
        5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        

7. A text file "run_analysis_data.txt" will be created in directory "GettingCleaningDataProject"
