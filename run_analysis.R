project<-function(){
  
  x<-read.table("./UCI HAR Dataset/test/X_test.txt")
  y<-read.table("./UCI HAR Dataset/train/X_train.txt")
  
  data<-merge(x,y, all=TRUE)
  
  vector<-c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530, 542, 543)
  new_data<-data[,vector]
  
  name<-read.table("./UCI HAR Dataset/features.txt")
  colnames(new_data)[]<-name
  
  average<-colMeans(new_data)
  
  write.table(average, file="average.txt", row.name=FALSE) 
}
