# Set up the working directory for the script (Commented out, but available if needed)
#	if (!file.exists("ClassProject")) {
#		dir.create("ClassProject")
#			}


#Download zip File, note local system config limits use of https and curl (commented out, but available if needed)
	
# fileurl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#	download.file (fileurl, destfile="./ClassProject/RawSourceData.zip")
#	dataDownloaded <- date()

#Extract ZIP files and remove zip file (commented out, but available if needed)

#unzip("./ClassProject/RawSourceData.zip", files = NULL, list = FALSE, overwrite = TRUE,
#     junkpaths = FALSE, exdir = "./ClassProject", unzip = "internal",
#      setTimes = FALSE)

#file.remove("./ClassProject/RawSourceData.zip")

#Create  reduced data tables for Test and Train dataset

#load full data

ColumnHeadings <- read.table("./ClassProject/UCI HAR Dataset/features.txt", header = FALSE)
ColHead <- as.vector(ColumnHeadings$V2)
TestData <- read.table("./ClassProject/UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = ColHead, dec = ".")
TrainData <- read.table("./ClassProject/UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = ColHead, dec = ".")

# Eliminate columns without mean or std dev data

MeanStdDevCols <- c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,501,504,516,517,529,530,542,543)
TestDataSlim <- TestData[,MeanStdDevCols]
TrainDataSlim <- TrainData[,MeanStdDevCols]


# Create Activity Data 

TestActivity <-read.table("./ClassProject/UCI HAR Dataset/test/y_test.txt", header = FALSE, col.names = "Activity Number")
TestActivity$Activity[TestActivity$Activity.Number==1] <- "walking"
TestActivity$Activity[TestActivity$Activity.Number==2] <- "upstairs"
TestActivity$Activity[TestActivity$Activity.Number==3] <- "downstairs"
TestActivity$Activity[TestActivity$Activity.Number==4] <- "sitting"
TestActivity$Activity[TestActivity$Activity.Number==5] <- "standing"
TestActivity$Activity[TestActivity$Activity.Number==6] <- "laying"

# To check run table(TestActivity$Activity,TestActivity$Activity.Number), should have only one non-zeros value per column

TrainActivity<-read.table("./ClassProject/UCI HAR Dataset/train/y_train.txt", header = FALSE, col.names = "Activity Number")
TrainActivity$Activity[TrainActivity$Activity.Number==1] <- "walking"
TrainActivity$Activity[TrainActivity$Activity.Number==2] <- "upstairs"
TrainActivity$Activity[TrainActivity$Activity.Number==3] <- "downstairs"
TrainActivity$Activity[TrainActivity$Activity.Number==4] <- "sitting"
TrainActivity$Activity[TrainActivity$Activity.Number==5] <- "standing"
TrainActivity$Activity[TrainActivity$Activity.Number==6] <- "laying"

# Create Subject Data
SubjectTest <- read.table("./ClassProject/UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "Subject")
SubjectTrain <- read.table("./ClassProject/UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = "Subject")

# Creating full Train & Test Datasets

Train <- cbind(SubjectTrain,TrainActivity,TrainDataSlim)
Test <- cbind(SubjectTest,TestActivity,TestDataSlim)

# Creating a Single Data Set
AllData <-rbind(Train, Test)


# Transform data into tidy Data Set and write to file

AllColumnNames <- colnames(AllData)
XX <- c(4:69)
MeasureDataColumns <- AllColumnNames[XX]
library(reshape2)
ReshapeData <- melt(AllData,id=c("Subject","Activity"), measure.vars=MeasureDataColumns)
if (!file.exists("./ClassProject/TidyDataSet")) {
		dir.create("./ClassProject/TidyDataSet")
}
write.table (ReshapeData,"./ClassProject/TidyDataSet/TidyDataAll.txt")

# Creating Subject Specific Tidy data sets for the average of each variable by activity 
Subject1Data <- ReshapeData[ (ReshapeData$Subject ==1),]
Subject1Summary <- dcast(Subject1Data,Activity ~ variable,mean)
subject <- data.frame(RowNum=1:6,Subject=1)
Subject1 <- cbind(subject$Subject,Subject1Summary)
 
Subject2Data <- ReshapeData[ (ReshapeData$Subject ==2),]
Subject2Summary <- dcast(Subject2Data,Activity ~ variable,mean)
subject$Subject <- 2
Subject2 <- cbind(subject$Subject,Subject2Summary)

Subject3Data <- ReshapeData[ (ReshapeData$Subject ==3),]
Subject3Summary <- dcast(Subject3Data,Activity ~ variable,mean)
subject$Subject <- 3
Subject3 <- cbind(subject$Subject,Subject3Summary)


Subject4Data <- ReshapeData[ (ReshapeData$Subject ==4),]
Subject4Summary <- dcast(Subject4Data,Activity ~ variable,mean)
subject$Subject <- 4
Subject4 <- cbind(subject$Subject,Subject4Summary)


Subject5Data <- ReshapeData[ (ReshapeData$Subject ==5),]
Subject5Summary <- dcast(Subject5Data,Activity ~ variable,mean)
subject$Subject <- 5
Subject5 <- cbind(subject$Subject,Subject5Summary)


Subject6Data <- ReshapeData[ (ReshapeData$Subject ==6),]
Subject6Summary <- dcast(Subject6Data,Activity ~ variable,mean)
subject$Subject <- 6
Subject6 <- cbind(subject$Subject,Subject6Summary)


Subject7Data <- ReshapeData[ (ReshapeData$Subject ==7),]
Subject7Summary <- dcast(Subject7Data,Activity ~ variable,mean)
subject$Subject <- 7
Subject7 <- cbind(subject$Subject,Subject7Summary)


Subject8Data <- ReshapeData[ (ReshapeData$Subject ==8),]
Subject8Summary <- dcast(Subject8Data,Activity ~ variable,mean)
subject$Subject <- 8
Subject8 <- cbind(subject$Subject,Subject8Summary)


Subject9Data <- ReshapeData[ (ReshapeData$Subject ==9),]
Subject9Summary <- dcast(Subject9Data,Activity ~ variable,mean)
subject$Subject <- 9
Subject9 <- cbind(subject$Subject,Subject9Summary)


Subject10Data <- ReshapeData[ (ReshapeData$Subject ==10),]
Subject10Summary <- dcast(Subject10Data,Activity ~ variable,mean)
subject$Subject <- 10
Subject10 <- cbind(subject$Subject,Subject10Summary)


Subject11Data <- ReshapeData[ (ReshapeData$Subject ==11),]
Subject11Summary <- dcast(Subject11Data,Activity ~ variable,mean)
subject$Subject <- 11
Subject11 <- cbind(subject$Subject,Subject11Summary)

 
Subject12Data <- ReshapeData[ (ReshapeData$Subject ==12),]
Subject12Summary <- dcast(Subject12Data,Activity ~ variable,mean)
subject$Subject <- 12
Subject12 <- cbind(subject$Subject,Subject12Summary)


Subject13Data <- ReshapeData[ (ReshapeData$Subject ==13),]
Subject13Summary <- dcast(Subject13Data,Activity ~ variable,mean)
subject$Subject <- 13
Subject13 <- cbind(subject$Subject,Subject13Summary)


Subject14Data <- ReshapeData[ (ReshapeData$Subject ==14),]
Subject14Summary <- dcast(Subject14Data,Activity ~ variable,mean)
subject$Subject <- 14
Subject14 <- cbind(subject$Subject,Subject14Summary)


Subject15Data <- ReshapeData[ (ReshapeData$Subject ==15),]
Subject15Summary <- dcast(Subject15Data,Activity ~ variable,mean)
subject$Subject <- 15
Subject15 <- cbind(subject$Subject,Subject15Summary)


Subject16Data <- ReshapeData[ (ReshapeData$Subject ==16),]
Subject16Summary <- dcast(Subject16Data,Activity ~ variable,mean)
subject$Subject <- 16
Subject16 <- cbind(subject$Subject,Subject16Summary)


Subject17Data <- ReshapeData[ (ReshapeData$Subject ==17),]
Subject17Summary <- dcast(Subject17Data,Activity ~ variable,mean)
subject$Subject <- 17
Subject17 <- cbind(subject$Subject,Subject17Summary)


Subject18Data <- ReshapeData[ (ReshapeData$Subject ==18),]
Subject18Summary <- dcast(Subject18Data,Activity ~ variable,mean)
subject$Subject <- 18
Subject18 <- cbind(subject$Subject,Subject18Summary)


Subject19Data <- ReshapeData[ (ReshapeData$Subject ==19),]
Subject19Summary <- dcast(Subject19Data,Activity ~ variable,mean)
subject$Subject <- 19
Subject19 <- cbind(subject$Subject,Subject19Summary)


Subject20Data <- ReshapeData[ (ReshapeData$Subject ==20),]
Subject20Summary <- dcast(Subject20Data,Activity ~ variable,mean)
subject$Subject <- 20
Subject20 <- cbind(subject$Subject,Subject20Summary)


Subject21Data <- ReshapeData[ (ReshapeData$Subject ==21),]
Subject21Summary <- dcast(Subject21Data,Activity ~ variable,mean)
subject$Subject <- 21
Subject21 <- cbind(subject$Subject,Subject21Summary)

 
Subject22Data <- ReshapeData[ (ReshapeData$Subject ==22),]
Subject22Summary <- dcast(Subject22Data,Activity ~ variable,mean)
subject$Subject <- 22
Subject22 <- cbind(subject$Subject,Subject22Summary)


Subject23Data <- ReshapeData[ (ReshapeData$Subject ==23),]
Subject23Summary <- dcast(Subject23Data,Activity ~ variable,mean)
subject$Subject <- 23
Subject23 <- cbind(subject$Subject,Subject23Summary)


Subject24Data <- ReshapeData[ (ReshapeData$Subject ==24),]
Subject24Summary <- dcast(Subject24Data,Activity ~ variable,mean)
subject$Subject <- 24
Subject24 <- cbind(subject$Subject,Subject24Summary)


Subject25Data <- ReshapeData[ (ReshapeData$Subject ==25),]
Subject25Summary <- dcast(Subject25Data,Activity ~ variable,mean)
subject$Subject <- 25
Subject25 <- cbind(subject$Subject,Subject25Summary)


Subject26Data <- ReshapeData[ (ReshapeData$Subject ==26),]
Subject26Summary <- dcast(Subject26Data,Activity ~ variable,mean)
subject$Subject <- 26
Subject26 <- cbind(subject$Subject,Subject26Summary)


Subject27Data <- ReshapeData[ (ReshapeData$Subject ==27),]
Subject27Summary <- dcast(Subject27Data,Activity ~ variable,mean)
subject$Subject <- 27
Subject27 <- cbind(subject$Subject,Subject27Summary)


Subject28Data <- ReshapeData[ (ReshapeData$Subject ==28),]
Subject28Summary <- dcast(Subject28Data,Activity ~ variable,mean)
subject$Subject <- 28
Subject28 <- cbind(subject$Subject,Subject28Summary)


Subject29Data <- ReshapeData[ (ReshapeData$Subject ==29),]
Subject29Summary <- dcast(Subject29Data,Activity ~ variable,mean)
subject$Subject <- 29
Subject29 <- cbind(subject$Subject,Subject29Summary)


Subject30Data <- ReshapeData[ (ReshapeData$Subject ==30),]
Subject30Summary <- dcast(Subject30Data,Activity ~ variable,mean)
subject$Subject <- 30
Subject30 <- cbind(subject$Subject,Subject30Summary)

SecondData <- rbind(Subject1, Subject2, Subject3, Subject4, Subject5, Subject6, Subject7, Subject8, Subject9, Subject10, Subject11, Subject12, Subject13, Subject14, Subject15, Subject16, Subject17, Subject18, Subject19, Subject20, Subject21, Subject22, Subject23, Subject24, Subject25, Subject26, Subject27, Subject28, Subject29, Subject30)
write.table (SecondData,"./ClassProject/TidyDataSet/TidyDataSubjectActivity.txt")
