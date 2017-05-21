[trainlabels, trainfeatures]=libsvmread('ex8a.txt');
plotdatalibsvm(trainfeatures,trainlabels);
fprintf('Program paused. Press enter to continue.\n');
pause;
model=svmtrain(trainlabels,trainfeatures,'-s 0 -t 2 -c 1 -g 10000');
plotboundary(trainlabels,trainfeatures,model,'t');
