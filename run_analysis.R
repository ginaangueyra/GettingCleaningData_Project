
# In this script we are going to create one data set that includes all information
# related to mean and standar deviation messures. 

# We will call the functions defined in "functions_run_analysis.R" in order to have
# the code in an organized form.


# Obtaining a data frame with the IDs of all subjects (test and train) per observation

subjectsID <- loadSubjectsID("../GettingCleaningData_Project/UCI HAR Dataset/test/subject_test.txt", 
                             "../GettingCleaningData_Project/UCI HAR Dataset/train/subject_train.txt")



# Loading training type information into a data frame with IDs and activity names

trainingIDs <- loadTrainingIDs("../GettingCleaningData_Project/UCI HAR Dataset/test/y_test.txt", 
                               "../GettingCleaningData_Project/UCI HAR Dataset/train/y_train.txt")

trainingLabels <- loadTrainingLabels("../GettingCleaningData_Project/UCI HAR Dataset/activity_labels.txt")

trainingType <- trainingIDsTypes(trainingIDs, trainingLabels)



# Loading features file to get the variables required

variables <- loadVaribles("../GettingCleaningData_Project/UCI HAR Dataset/features.txt")



# Loading the data collected per observation for each varible required (mean and std)

dataMeanStd <- loadData("../GettingCleaningData_Project/UCI HAR Dataset/test/X_test.txt", 
                        "../GettingCleaningData_Project/UCI HAR Dataset/train/X_train.txt",
                        variables)



# Creating the data set required in 1 to 4 points

data <- cbind(subjectsID, trainingType, dataMeanStd) 



# Creating the data frame with the average of each variable for each activity and 
# each subject (point 5 of the assignment)

averageData <- averageActivitySubject(data)



# Saving the average data in to a text file

write.table(x = averageData, file = "average_activity_data.txt", row.names = FALSE)


