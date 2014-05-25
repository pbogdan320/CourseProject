CourseProject
=============

Repo for Getting and Cleansing Data Course Project
---------------------------------------------------------
THe data is source from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%Dataset.zip.

This source data about Human Activity Using Smartphones Data

References for this data include:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non LInear Complex Systems Laboratory
DITEN - Unersita degli Studi di Genova
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

License:
Use of this dataset in publications must be acknoledged by referencing teh follwoing publication [1]

[1]Davide Anguita, Alessandro GHio, Luca Oneto, Xavier Parra and Jorge Reyess-Ortiz.  Human Activity Recognition
on Smartphones using a Muilticlass Hardware-Friendly Support Vencor Machine.  Internation workshop for Ambient Assisted 
Living (IWAAL 2012).  Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for it sue or misuse.  ANy commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012

--------------------------------------------------------------------------------------
The course project Repo contains the following:

README.md -- Overview of data repo and contents
run_analysis.R -- R script that is used to extract data from the source data set by merging the Train and Test data.  It then creates two tidy data sets as described below from that merged data.
TidyDataAll.txt -- Tidy dataset derived from source data that lists all observations for mean and standard deviation measures for all 30 subjects and all 6 activities.
TidyDataSubjectActivity.txt -- Tidy data set that provides summarized data of the average for all mean and standard deviation measures for each subject-activity pairing.
CodeBook.md -- A code book for this dataset that describes teh variables, the data and any transformations.
