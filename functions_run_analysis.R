
# In this script we are going to define the functions needed to accomplish the
# objectives of the assignment.


# =======================================================================================


# This function return a data frame with the IDs of all subjects (test and train) 
# per observation
loadSubjectsID <- function(subjectsTestFile, subjectsTrainFile){
    
    # Loading the test file
    subjectTest <- read.table(file = subjectsTestFile)
    names(subjectTest) <- c("subjectID")
    
    # Loading the train file
    subjectTrain <- read.table(file = subjectsTrainFile)
    names(subjectTrain) <- c("subjectID")
    
    # Binding in one single data frame
    subjectID <- rbind(subjectTest, subjectTrain)
    
    subjectID
    
}


# =======================================================================================


# This function return a data frame with the training IDs (test and train) 
# per observation
loadTrainingIDs <- function(trainingIDTestFile, trainingIDTrainFile){
    
    # Loading the test file
    trainingTypeTest <- read.table(file = trainingIDTestFile)
    names(trainingTypeTest) <- c("trainingID")
    
    # Loading the train file
    trainingTypeTrain <- read.table(file = trainingIDTrainFile)
    names(trainingTypeTrain) <- c("trainingID")
    
    # Binding in one single data frame
    trainingID <- rbind(trainingTypeTest, trainingTypeTrain)
    
    trainingID
    
}


# =======================================================================================


# This function load the training labels and return a data frame with the factor
# of training types avaliable
loadTrainingLabels <- function(trainingLabelsFile){
    
    # Loading the file
    trainingTypeLabels <- read.table(file = trainingLabelsFile)
    names(trainingTypeLabels) <- c("trainingID", "trainingType")
    
    trainingTypeLabels
    
}


# =======================================================================================


# This function build a data frame with training IDs and types (test and train) 
# per observation
trainingIDsTypes <- function(trainingIDs, trainingLabels){
    
    # Define a data frame equal to trainingIDs
    trainingTypeID <- trainingIDs
    
    
    # Asign the training type to each observation in the new variable according 
    # to trainingLabels 
    for(i in 1:nrow(trainingIDs)){
        
        if(trainingTypeID[i, 1] == trainingLabels[1, 1]){
            
            trainingTypeID[i, 1] <- as.character(trainingLabels[1, 2])
            
        }
        
        else if(trainingTypeID[i, 1] == trainingLabels[2, 1]){
            
            trainingTypeID[i, 1] <- as.character(trainingLabels[2, 2])
            
        }
        
        else if(trainingTypeID[i, 1] == trainingLabels[3, 1]){
            
            trainingTypeID[i, 1] <- as.character(trainingLabels[3, 2])
            
        }
        
        else if(trainingTypeID[i, 1] == trainingLabels[4, 1]){
            
            trainingTypeID[i, 1] <- as.character(trainingLabels[4, 2])
            
        }
        
        else if(trainingTypeID[i, 1] == trainingLabels[5, 1]){
            
            trainingTypeID[i, 1] <- as.character(trainingLabels[5, 2])
            
        }
        
        else if(trainingTypeID[i, 1] == trainingLabels[6, 1]){
            
            trainingTypeID[i, 1] <- as.character(trainingLabels[6, 2])
            
        }
        
    }
    
    # Especify the names for each column
    names(trainingTypeID) <- c("trainingTypeID")
    names(trainingIDs) <- c("trainingID")
    
    
    # Binding in one single data frame
    trainingType <- cbind(trainingIDs, trainingTypeID)
    
    trainingType
    
}


# =======================================================================================


# This function loads the file who contains the variables and corresponding columns 
# for each variable to return the variables required (mean and std)
loadVaribles <- function(variablesFile){
    
    # Loading the file
    features <- read.table(file = variablesFile)
    names(features) <- c("column", "variable")
    
    # Obtaining only the variables required
    objectiveVariables <- filter(features, grepl('mean()', x = variable, fixed = TRUE) | grepl('std()', x = variable, fixed = TRUE))
    
    # Adjusting the names of each variable to be more descriptive
    objectiveVariables$variable <- c("timeBodyAccelerometer_mean_X", 
                                     "timeBodyAccelerometer_mean_Y", 
                                     "timeBodyAccelerometer_mean_Z", 
                                     "timeBodyAccelerometer_std_X",
                                     "timeBodyAccelerometer_std_Y", 
                                     "timeBodyAccelerometer_std_Z",
                                     "timeGravityAccelerometer_mean_X", 
                                     "timeGravityAccelerometer_mean_Y",
                                     "timeGravityAccelerometer_mean_Z", 
                                     "timeGravityAccelerometer_std_X",
                                     "timeGravityAccelerometer_std_Y", 
                                     "timeGravityAccelerometer_std_Z",
                                     "timeBodyAccelerometerJerk_mean_X",
                                     "timeBodyAccelerometerJerk_mean_Y",
                                     "timeBodyAccelerometerJerk_mean_Z",
                                     "timeBodyAccelerometerJerk_std_X",
                                     "timeBodyAccelerometerJerk_std_Y",
                                     "timeBodyAccelerometerJerk_std_Z",
                                     "timeBodyGyroscope_mean_X",
                                     "timeBodyGyroscope_mean_Y",
                                     "timeBodyGyroscope_mean_Z",
                                     "timeBodyGyroscope_std_X",
                                     "timeBodyGyroscope_std_Y",
                                     "timeBodyGyroscope_std_Z",
                                     "timeBodyGyroscopeJerk_mean_X",
                                     "timeBodyGyroscopeJerk_mean_Y",
                                     "timeBodyGyroscopeJerk_mean_Z",
                                     "timeBodyGyroscopeJerk_std_X",
                                     "timeBodyGyroscopeJerk_std_Y",
                                     "timeBodyGyroscopeJerk_std_Z",
                                     "timeBodyAccelerometerMagnitude_mean",
                                     "timeBodyAccelerometerMagnitude_std",
                                     "timeGravityAccelerometerMagnitude_mean",
                                     "timeGravityAccelerometerMagnitude_std",
                                     "timeBodyAccelerometerJerkMagnitude_mean",
                                     "timeBodyAccelerometerJerkMagnitude_std",
                                     "timeBodyGyroscopeMagnitude_mean",
                                     "timeBodyGyroscopeMagnitude_std",
                                     "timeBodyGyroscopeJerkMagnitude_mean",
                                     "timeBodyGyroscopeJerkMagnitude_std",
                                     "frequencyBodyAccelerometer_mean_X",
                                     "frequencyBodyAccelerometer_mean_Y",
                                     "frequencyBodyAccelerometer_mean_Z",
                                     "frequencyBodyAccelerometer_std_X",
                                     "frequencyBodyAccelerometer_std_Y",
                                     "frequencyBodyAccelerometer_std_Z",
                                     "frequencyBodyAccelerometerJerk_mean_X",
                                     "frequencyBodyAccelerometerJerk_mean_Y",
                                     "frequencyBodyAccelerometerJerk_mean_Z",
                                     "frequencyBodyAccelerometerJerk_std_X",
                                     "frequencyBodyAccelerometerJerk_std_Y",
                                     "frequencyBodyAccelerometerJerk_std_Z",
                                     "frequencyBodyGyroscope_mean_X",
                                     "frequencyBodyGyroscope_mean_Y",
                                     "frequencyBodyGyroscope_mean_Z",
                                     "frequencyBodyGyroscope_std_X",
                                     "frequencyBodyGyroscope_std_Y",
                                     "frequencyBodyGyroscope_std_Z",
                                     "frequencyBodyAccelerometerMagnitude_mean",
                                     "frequencyBodyAccelerometerMagnitude_std",
                                     "frequencyBodyBodyAccelerometerJerkMagnitude_mean",
                                     "frequencyBodyBodyAccelerometerJerkMagnitude_std",
                                     "frequencyBodyBodyGyroscopeMagnitude_mean",
                                     "frequencyBodyBodyGyroscopeMagnitude_std",
                                     "frequencyBodyBodyGyroscopeJerkMagnitude_mean",
                                     "frequencyBodyBodyGyroscopeJerkMagnitude_std")
    
    objectiveVariables
    
}


# =======================================================================================


# This function load the data collected for each varible required (mean and std)
# per observation
loadData <- function(dataTestFile, dataTrainFile, variables){
    
    # Loading the test file
    rawDataTest <- read.table(file = dataTestFile) 
    dataTest <- select(rawDataTest, variables$column)
    names(dataTest) <- variables$variable
    
    
    # Loading the train file
    rawDataTrain <- read.table(file = dataTrainFile)
    dataTrain <- select(rawDataTrain, variables$column)
    names(dataTrain) <- variables$variable
    
    
    # Binding in one single data frame
    dataTestTrain <- rbind(dataTest, dataTrain)
    
    dataTestTrain
    
}


# =======================================================================================


# This function creates a data frame with the average of each variable for 
# each activity and each subject
averageActivitySubject <- function(data){
    
    # Creates the initial data frame using the first variable    
    averageData <- aggregate(timeBodyAccelerometer_mean_X ~ subjectID + trainingTypeID, FUN = mean, data = data)
    
    # Loop over the data variables (columns)
    for(i in 5:ncol(data)){
        
        # Creates a temporal data frame with the variable average of the column i
        temp <- aggregate(data[, i] ~ subjectID + trainingTypeID, FUN = mean, data = data)
        names(temp)[3] <- names(data)[i]
        
        # Merge the initial data frame with the temporal data frame using common 
        # variables to merge by them
        averageData <- merge(averageData, temp, by = intersect(names(averageData), names(temp)))
         
    }
    
    averageData
    
}
