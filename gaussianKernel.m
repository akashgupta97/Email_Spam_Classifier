function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);


sim = 0;

v=0;
n=size(x1,1);
for i=1:n
  v=v+((x1(i)-x2(i)).^2);
end

sim = exp(-v/(2*sigma*sigma));


% =============================================================
    
end
