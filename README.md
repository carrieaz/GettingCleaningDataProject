GettingCleaningDataProject
==========================
## Pipeline to run "run_analysis.R"
1. Assume your working directory is "GettingCleaningDataProject".  The following steps are all done in this directory

2. Download raw data from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

3. The mac or window system should unzip the file into a directory as "UCI HAR Dataset" by clicking on the downloaded file.  For linux users, you can use 'unzip filename' to unzip the downloaded zip file. As a result, a directory "UCI HAR Dataset" will also be created with all the data files in it.

4. Move directory "UCI HAR Dataset" to your working directory "GettingCleaningDataProject"

5. Setup working directory in R or Rstudio to "/path/to/GettingCleaningDataProject".  The R command is 'setwd("/path/to/GettingCleaningDataProject")'
        
6. Enter R command "source run_analysis.R"

7. A text file "run_analysis_data.txt" will be created in directory "GettingCleaningDataProject"
