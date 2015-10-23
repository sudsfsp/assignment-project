library (dplyr)
library (tidyr)
library (data.table)
library (reshape2)

xtrain <- fread ("./dataset/UCI HAR Dataset/train/X_train.txt")
activityID <- fread ("./dataset/UCI HAR Dataset/train/y_train.txt")
subjectID <-  fread ("./dataset/UCI HAR Dataset/train/subject_train.txt")
training <- bind_cols(subjectID, activityID )

names(training)[1:2] <- c("subjectID", "activityID")

xtest <- fread ("./dataset/UCI HAR Dataset/test/X_test.txt")
activity <- fread ("./dataset/UCI HAR Dataset/test/y_test.txt")
subject <-  fread ("./dataset/UCI HAR Dataset/test/subject_test.txt")
testing <- bind_cols(subject, activity)

names(testing)[1:2] <- c("subjectID", "activityID")


mergeActivity <- bind_rows(training, testing)
mergeData <- bind_rows(xtrain,xtest)

mergeActivity$activityID <- factor(mergeActivity$activityID, levels = c(1:6),
                                   labels = c("walking", "walkingUpstairs",
                                                    "walkingDownstair","sitting",
                                                    "standing","laying" ))

feature <- fread ("./dataset/UCI HAR Dataset/features.txt")

Feature1 <- unlist(feature[, 2, with=F])
Feature2 <- as.vector(Feature1)
newFeature <-  gsub("^fBodyBody", "fBody", Feature2)

mergeFeature <- rbind(newFeature, mergeData)

colnames(mergeFeature) <- mergeFeature [1,]
New_mergeFeature <- mergeFeature[-1, ]

uniqueData <- New_mergeFeature [, !duplicated(colnames(New_mergeFeature))]

NewDataMerge <-  uniqueData [,grepl("\\bmean()\\b|\\bstd()\\b",colnames(uniqueData))]

NewDataMerge [,1:66] <- sapply (NewDataMerge[,1:66], as.numeric)
names(NewDataMerge)[1:66] <-  gsub("[[:punct:]]","" , names(NewDataMerge)) %>% tolower

finalData <- bind_cols(mergeActivity, NewDataMerge)

samsungData <- melt(finalData, id.vars = c("subjectID", "activityID")) %>% 
                     dcast(subjectID + activityID ~ variable,fun.aggregate = mean, na.rm=TRUE)

