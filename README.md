# CleanData_PeerAssessment1
Peer Assessment 1 for "Getting and Cleaning Data" course. The objective here is to get a tidy data set from
"Human Activity Recognition Using Smartphones Data Set" which can be used for further processing.

## Getting the Data
The data can be downloaded from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Cleaning the Data
Extract the downloaded archive in R's working directory and run the script *run_analysis.R* which can be found in this project.
This script will generate the tidy dataset tidy.txt in the working directory. For details about this dataset refer [CookBook.md](CookBook.md)

### Library requirements
The script required *reshape2* library to be installed on the system.

## References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
