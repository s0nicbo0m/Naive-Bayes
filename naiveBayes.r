  library(e1071)
  library(caTools)
  data(iris)
  iris$spl<-sample.split(iris,SplitRatio=0.7)    #breaking the sample into 30% as test data and 70% as train data
  train<-subset(iris,iris$spl==TRUE)             #training data
  test=subset(iris,iris$spl==FALSE)              #testing data
  nB_model<-naiveBayes(train[,1:4],train[,5])	 #using naiveBayes inbuilt function	
  table(predict(nB_model,test[,5]),test[,5])
  
  