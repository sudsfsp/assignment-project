

## This code work as install automatically required package for run below code smoothly 

list.of.packages <- c("dplyr", "data.table", "reshape2")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

## load all necessary libraries.
 
library (dplyr)
library (data.table)
library (reshape2)

## Reading raw data files

xtrain <- fread ("./dataset/UCI HAR Dataset/train/X_train.txt")
activityID <- fread ("./dataset/UCI HAR Dataset/train/y_train.txt")
subjectID <-  fread ("./dataset/UCI HAR Dataset/train/subject_train.txt")
training <- bind_cols(subjectID, activityID )

names(training)[1:2] <- c("subjectID", "activityID") ## naming the column name explicitly 

xtest <- fread ("./dataset/UCI HAR Dataset/test/X_test.txt")
activity <- fread ("./dataset/UCI HAR Dataset/test/y_test.txt")
subject <-  fread ("./dataset/UCI HAR Dataset/test/subject_test.txt")
testing <- bind_cols(subject, activity)

names(testing)[1:2] <- c("subjectID", "activityID")

## Merge dataset according to rows
 
mergeActivity <- bind_rows(training, testing)
mergeData <- bind_rows(xtrain,xtest)

## Read all variable name from feature.txt and assign them as header of dataset

feature <- fread ("./dataset/UCI HAR Dataset/features.txt")
Feature1 <- unlist(feature[, 2, with=F])
Feature2 <- as.vector(Feature1)
newFeature <-  gsub("^fBodyBody", "fBody", Feature2) ## Remove repeated word in variable name. 
mergeFeature <- rbind(newFeature, mergeData)
colnames(mergeFeature) <- mergeFeature [1,]
New_mergeFeature <- mergeFeature[-1, ]

## Create unique dataset according to column name,

uniqueData <- New_mergeFeature [, !duplicated(colnames(New_mergeFeature))]

## Extracting dataset on the basis of mean and standard deviation function from original dataset.

NewDataMerge <-  uniqueData [,grepl("\\bmean()\\b|\\bstd()\\b",colnames(uniqueData))]

 ## changing class of dataset from character to numeric

NewDataMerge [,1:66] <- sapply (NewDataMerge[,1:66], as.numeric)

## Remove punctuation sign between variable names.
names(NewDataMerge)[1:66] <-  gsub("[[:punct:]]","" , names(NewDataMerge)) 

## activityID was coded as factor and according to this factor we will summarize 
## dataset into  average of each variable for each activity and each subject.

mergeActivity$activityID <- factor(mergeActivity$activityID, levels = c(1:6),
                                   labels = c("walking", "walkingUpstairs",
                                                    "walkingDownstair","sitting",
                                                    "standing","laying" ))

finalData <- bind_cols(mergeActivity, NewDataMerge)

## Summarize dataset according to mean function 
 
samsungData <- melt(finalData, id.vars = c("subjectID", "activityID")) %>% 
                     dcast(subjectID + activityID ~ variable,fun.aggregate = mean, na.rm=TRUE)

