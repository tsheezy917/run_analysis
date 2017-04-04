# run_analysis
Coursera project getting and cleaning data 

The run_analyis script is the "tidying" and merging of two datasets (test & training sets) which record gyroscope and accelerometer info from smart devices.  The training and test data sets contained 7352 and 2947 observings, respectively, across 561 variables collected from 30 volunteers.  That data have been condensed to 79 variables which have been extracted from the original volume centering around mean and standard deviations of various data points, combining the total number of observation into one data set.  In addition, the data contain categorical info from 6 different activity levels.  That information is preserved in the resulting data set. 


Furthermore, the new data set calculates the mean of each of the 79 variables from the resulting **(test_train)** 10,299 observations, while also taking the mean values of each of the 6 activity levels (walking, walking upstairs, walking downstairs, standing, sitting and laying).  

This dataset includes the following: 
- README.md
- CodeBook.md - explanation of variables
- Run_analysis.R - explanation of the data processing

Finally, an addition dataframe was created from the resulting data which calculates the mean of the variables **(meanDF)** with the 6 activity levels as well as the overall mean per activity level 


