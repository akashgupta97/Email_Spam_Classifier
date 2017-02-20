function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%  

C = 1;
sigma = 0.1;


  model=svmTrain(X,y,C,@(x1,x2) gaussianKernel(x1,x2,sigma));
  predictions=svmPredict(model,Xval);
  error=mean(double(predictions~= yval));


  
 





% =========================================================================

end
