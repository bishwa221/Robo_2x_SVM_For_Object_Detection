load('ImageDataTrain.mat');
Xtrain=StandardizeData(data.trainX); 
Ytrain=data.trainY;

load('ImageDataTest.mat');
Xtest=StandardizeData(data.testX); 
Ytest=data.testY;

model = fitcsvm(Xtrain,Ytrain,'KernelFunction','KernelPoly');
[preds,~] = predict(model,Xtest);