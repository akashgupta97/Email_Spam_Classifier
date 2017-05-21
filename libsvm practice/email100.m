[trainlabels, trainfeatures]=libsvmread('email_train-100.txt');
model=svmtrain(trainlabels,trainfeatures,'-s 0 -t 0 -c 1');
[testlabels, testfeatures]=libsvmread('email_test.txt');
[predicted_values,accuracy,dec_values]=svmpredict(testlabels,testfeatures,model);
fprintf("\nAccuracy:-%d\n",accuracy);