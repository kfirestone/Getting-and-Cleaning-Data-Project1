#Getting and Cleaning Data Project 1


The script "run_analysis.R" cleans up the Human Activity Recognition Using Smartphones Data Set obtained from         http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. It also merges the test and train data sets into a single data frame. Furthermore, the script creates a new data frame containing the column averages of the mean and standard deviation for each record for each subject split by activity. This data frame is saved as a text file titled "Column Means Data". 

For script to read in data frames the current working directory must be set to the home folder of the data. That is to say the folder where the "test"" and "train"" folders are located along with the text files "activity_labels", "features", "features_info" and "README". Save the "run_analysis.R" script in this home folder and run via the source function.

To load in "Column Means Data.txt" file created in the script, read in using the read.table function with header = TRUE.

All numeric values in the dataset have been normalized to by within [-1,1].

##This dataset includes the following:
* README.md
* CodeBook.md
* run_analysis.R
* Column Means Data.txt

