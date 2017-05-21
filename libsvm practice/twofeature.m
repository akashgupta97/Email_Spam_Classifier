[trainlabels, trainfeatures]=libsvmread('twofeature.txt');
plotdatalibsvm(trainfeatures,trainlabels);
model=svmtrain(trainlabels,trainfeatures,'-s 0 -t 0 -c 1');

visualizeBoundaryLinearlib(trainfeatures,trainlabels,model);