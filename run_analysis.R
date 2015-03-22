library(reshape2)

features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Load table containing the test vector
test.set <- read.table("UCI HAR Dataset/test/X_test.txt")
# Load table containing the activity for each vector
test.label <- read.table("UCI HAR Dataset/test/y_test.txt")
test.subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Bind the activity and the vector
test.table <- cbind(test.subject, test.set, test.label)

# Load the training data and activity tables and bind so that
# each activity maps to its vector
train.set <- read.table("UCI HAR Dataset/train/X_train.txt")
train.label <- read.table("UCI HAR Dataset/train/y_train.txt")
train.subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train.table <- cbind(train.subject, train.label, train.set)

# bind the testing and training dataset to create one huge dataset
merged.data <- rbind(train.table, test.table)

colnames(merged.data) <- c("Subject", 
                           "Activity", 
                           as.character(features$V2))

# Extract only columns which have std dev and mean values
cols <- c(1, 2, grep("-std|mean", colnames(merged.data)))
clean.data <- merged.data[, cols]

clean.data$Activity <- factor(clean.data$Activity, 
                              levels = activity_labels$V1,
                              labels = activity_labels$V2)

# Get the mean per activity per subject
clean.melted <- melt(clean.data, id.vars = c("Subject","Activity"))
tidy <- dcast(clean.melted, Subject + Activity ~ variable, mean)

write.table(tidy, file = "tidy.txt", row.names = FALSE)
