
## Getting and Cleaning Data Project 

The aim of this assignment is to learn how to work with raw data and convert it into 
tidy data. To achive that purpose you can follow the following easy steps:


### Identifying included files:


- **README.txt**: This file.

- **run_analysis.R**: Describes the logical steps to follow in order to complete the 
assignment. Contain the calls to the functions that actually do the calculus.

- **functions_run_analysis.R**: Contain the functions where is the real work done
to process the data. Each function has its comments and they are really easy to follow.

- **CodeBook.md**: Shows information about the variables and steps used to obtain 
the tidy data required.


### Running the scripts and checking the outputs


1. Create a folder named **GettingCleaningData_Project**


2. Save in your computer the following files (in the previous folder):
    - Folder **UCI HAR Dataset** containing the original files to proccess.
    - File **functions_run_analysis.R** containing the functions.
    - File **run_analysis.R** containing organized calls to the functions of previous file.  
 
  
3. Load files in the following order (run the following code):
    - \> source("functions_run_analysis.R")
    - \> source("run_analysis.R")  
  
  
4. Check the variables and file created:
    - **Variables**: you'll find 8 new variables. 5 of them were used to create 
    the data frame called **data** which contains the complete tidy data, and the 
    last variable is **averageData** which contains the average of the measures by
    activity and subjetc.
    - **File**: you'll find also a file in the folder you're working in called
    **average_activity_data.txt**. This file contains the information created in
    **averageData** variable. Yoy can load it runing the following code:
        - \> aveData <- read.table("average_activity_data.txt", header = TRUE)
        - \> View(aveData)
    
I hope you enjoy the review!


### License of the original data used

The original dataset is property of the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
