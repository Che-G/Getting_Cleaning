message("Keep calm while we are working ;)")

##Reading test and training data
tst_subj <- read.table("test/subject_test.txt")
trn_subj <- read.table("train//subject_train.txt")
tst_act <- read.table("test//y_test.txt")
trn_act <- read.table("train//y_train.txt")
tst_feat <- read.table("test//X_test.txt")
trn_feat <- read.table("train//X_train.txt")
##Merging subject, activites and observations
tst <- cbind(c(tst_subj, tst_act), tst_feat)
trn <- cbind(c(trn_subj, trn_act), trn_feat)

merged <- rbind(tst, trn)   ##Merge test and training data. Point 1 completed!
features <-read.table("features.txt",colClasses="character")[,2]    ##Reading the features list
stdmean_cols <- sort(c(grep("std",features),grep("mean",features)))     ## Selecting the mean and std data
stdmean <- merged[,c(1,2,stdmean_cols+2)]     ##Subsetting the data to complete point 2 ;)

activities <- read.table("activity_labels.txt") ##Reading the list of activities
stdmean$V1.1<-sapply(stdmean$V1.1, function(x) {x<-activities[which(activities==x),2]}) ##replacing the numbers with activity labels. Step 3 completed
var_names <-c("Subject", "Activity", features[stdmean_cols]) ##Creating the vector of colNames
colnames(stdmean) <- var_names ##Naming the columns -- step 4 complete! Almost done!