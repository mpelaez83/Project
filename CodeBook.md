Here a present a code book that describes the variables, the data, and any transformations I made.

- Variables:
    - "x" stands for the data set of tests
    - "y" stands for the data set of trains
    - "data" is the data set resulting from the merge of x and y
    - "vector" contains the numbers of the columns that will be extracted from the merged data set
    - "new_data" corresponds with the data set after extracting the columns we are interested on
    - "name" is a vector with the name of the column we selected in vector
    - "average" represents the average of the columns in data set "new_data"

- Data: data was downloaded from next link
        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

- Transformations:        
    - merge(x, y, all=TRUE): we merge these two data set putting rows from data set y after row in data set x.
    - colMeans(new_data): we calculate the mean of each column
