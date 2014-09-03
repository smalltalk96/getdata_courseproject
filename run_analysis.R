
# define the name of zipfile
zipfile = "data\\data.zip"

# download data
# download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="data\\data.zip",mode="wb")

# number of rows to read in, set 100 in debug situation, -1 in release
rows = -1

# read list of columns
cols <- read.delim(file=unz(zipfile, "UCI HAR Dataset/features.txt"),header=FALSE,sep="",col.names=c("seq", "name"))

# make list of columns we need 
usedCols <- cols[grep("mean\\(\\)|std\\(\\)", cols$name),]
usedCols$name <- gsub("\\(\\)", "", usedCols$name)
usedCols$name <- gsub("-", "_", usedCols$name)
usedCols$name <- gsub("mean", "Mean", usedCols$name)
usedCols$name <- gsub("std", "Std", usedCols$name)

# read list of activity description
activityLabels <- read.delim(file=unz(zipfile, "UCI HAR Dataset/activity_labels.txt"),header=FALSE,sep="",col.names=c("seq", "label"))


# read detail data
data = list(test=NA, train=NA)
for (trial in c("test", "train")) {
  #trial = "test"
  
  data[[trial]] <- read.delim(file=unz(zipfile, paste0("UCI HAR Dataset/",trial,"/X_",trial,".txt")),header=FALSE,sep="",nrows=rows)
  data[[trial]] <- data[[trial]][,usedCols$seq]
  names(data[[trial]]) <- usedCols$name
  subjects <- read.delim(file=unz(zipfile, paste0("UCI HAR Dataset/",trial,"/subject_", trial, ".txt")),header=FALSE,sep="",nrows=rows)
  data[[trial]]$subject <- subjects[[1]]
  activities <- read.delim(file=unz(zipfile, paste0("UCI HAR Dataset/", trial, "/y_", trial, ".txt")),header=FALSE,sep="",nrows=rows)
  activities <- activityLabels[activities$V1,]
  data[[trial]]$activity <- activities$label
  data[[trial]]$trial = trial
}

# merge test and train data 
combinData <- rbind(data$test,data$train)

# create tidy data set with the average of each variable for each activity and each subject
aggData <- aggregate(combinData[,1:nrow(usedCols)], list(combinData$activity, combinData$subject), mean)
names(aggData)[1] = "Activity"
names(aggData)[2] = "Subject"

# save tidy data set into a text file
write.table(aggData, file="data\\aggdata.txt", row.names=FALSE)

# save cookbook
# write.table(names(aggData), file="CookBook.md", row.names=TRUE, col.names=FALSE, quote=FALSE)


