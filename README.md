###Project Title

####Human Activity Recognition Using Smartphones Dataset. 

###Project Goal

Raw data -> Processing script -> tidy data -> data analysis -> data communication


###Principle of  Tidy dataset :

 - Each variable forms a column.    
 - Each observation forms a row.          
 - Each type of obervational unit forms a table.           


###Way of working Script

In starting, script need to load all libraries for running code smoothly. I have used 4 packages in script for run code and make pure tidy data from unprocessed raw data. The name of package is:

 - dplyr            
 - data.table       
 - reshape2                                                            

 You can see original and download zip file link related raw dataset in Codebook.md file. I wrote some few steps in script file and these steps start from Read, merging data set, subsetting and extracting , cleaning and filtering duplicity,  transforming and lastly make pure tidy data set for ready to analysis. I have described above some underline principle of tidy data. Here, I briefly describe how these steps related to each other and these are:    

**Read Dataset:**
        
 -  After unzip dataset.zip file in working directory with help of unzip () function, You will see a dataset folder and there are many files are available but our aim is merge testing and training text files so we choose train and test folder for performing our operation. 
 - I have read text data with the help fread () function (data.table package) because it’s fast to read big dataset.
 - Read x_train, subject_train, y_train text files from training folder and assign into xtrain and subjectID, activityId object respectivily.                       
 - Read  x_test, subject_test, y_test text files from testing folder and assign into xtes and subjectID, activityId object respectivily.          

**Merge Dataset:**

 - After read data, I use bind_cols (dplyr package) and rbind () for merging dataset. 
 - Merge subject_test with y_train txt file together and assign to training object. Merge subject_test and y_test together and assign to testing object. I merge again testing and training object into mergeActivity object. 
 - Merge x_train and x_test file together according to rows and assign to mergeData.
 - I use variable name contain in feature.txt file as a column name of mergeData. I use rbind () function for performing this step.       
 - Original information of all text files , See Codebook.md    

**Cleaning dataset:**

-	The column name of megeData have some error as typing wrong or repeated wording so I have use gsub () function for reduce this problem and make unique column name with the help !duplicated() function. 
-	Use [[:punct:]] regular expression with gsub () for remove any punctuation and also use tolower () function for removing case sensitive character in variable name. 

**Subsetting:**

-	I have subset data frame according to mean and standard deviation function (as per project guide) so I have used grepl() function for extracting those variable name who have mean() and std() word. The result of extracting assign to NewDataMerge object.

**Transforming:**

-	I have summarize dataset according to group by activities column from mergerActivity object.
-	I have use sapply () for make all character variable to numeric variable because we want average of each activity so I need to set variable as numeric.  

**Tidy data:**

-	Merge NewDataMerge dataset with mergeActivity dataset by column wise (bind_cols()) and you will get a tidy data but as per project guideline we want tidy data set with average of each variable for each activity and each subject.
-	I have used reshape2 (package) for making average of each variable for each activity and each subject. I used melt() function and dcast() function together with the help of pipeline operator in run_analyis.R script file. 

Note : I request to reader and marker,  samsungData is final object so if you want check dataset, you can subset dataset with few rows and columns. Ex: sumsungData[1:5,1:5]. 



###Other Important Link

 - **run.analysis.R** : Show coding about how to make tidy data set from multiple raw data set. 

 - **Codebook.md** : Shows information about the variables used in the output tidy dataset and files (raw dataset) which is used in during make tidy dataset.  
