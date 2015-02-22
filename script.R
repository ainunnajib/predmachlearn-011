library(caret)

trainData <- read.csv("http://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv", 
                      na.strings = c("#DIV/0!", "NA"))
testData <- read.csv("http://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv")

head(trainData)
summary(trainData)

modelFit <- train(classe ~ ., data = trainData, method = "glm")
