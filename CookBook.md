# CookBook

## The input dataset
The input dataset consists of the following files:

- X_train
- y_train
- X_test
- y_test

The X_* datasets contain the measurement vector while the y_* datasets contain the activities for which the vectors were measured.

## Transformation

- Merge the training and testing datasets such that each activity index precedes the vector
- From this merged dataset just just extract the standard-deviations and means of different measurements
- Label the activity index with proper activity names
- Create a new dataset with average of each variable for each activty per each test subject and save it in tidy.txt as a dataframe which can be easily loaded in R
