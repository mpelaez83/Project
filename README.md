Project
=======

Getting and Cleaning Data Course

## Here, I present the script function used to create a tidy data following the steps indicated in the instructions of this ## project. I will include the comment related with each instruction step in the r-code. 
## In order to run this script you should have the uncompressed folder with the data in the same directory you are running ## this script. After running a file "average.txt" will be saved in the same directory. This contains the tidy data asked ## in the step 5.
## Please contact me if when running this you find any problem. I will appreacita any feedback. Thank you.

## Function begins
project<-function(){
  
  ## Save the dataset corresponding to test and train in variables x and y. Files should be in the downloaded and 
  ## uncompressed folder. 
  x<-read.table("./UCI HAR Dataset/test/X_test.txt")
  y<-read.table("./UCI HAR Dataset/train/X_train.txt")
  
  ## Data is merged
  data<-merge(x,y, all=TRUE)
  
  ## I define a vector with the numbers of the columns I want to extract from the merged data, this is mean() and std()    ## corresponding to each activity.
  
  vector<-c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530, 542, 543)
  
  ## A new data set with the selected columns is created
  new_data<-data[,vector]
  
  ## In order to properly name each column I use the descriptions given in the file "features.txt". TO do that I use       ## again the vector that drive me to the column name I need to use. First I save the names in a vector and then I        ## recall the columns of the previous new_data set with the corresponding names.
  name<-read.table("./UCI HAR Dataset/features.txt")
  colnames(new_data)[]<-name
  
  ## Finally, I average out each column as it is indicated in the step 5 of the instructions.
  average<-colMeans(new_data)
  
  ## Additionally, I save this data in the file "average.txt" to be submitted.
  write.table(average, file="average.txt", row.name=FALSE) 
}
