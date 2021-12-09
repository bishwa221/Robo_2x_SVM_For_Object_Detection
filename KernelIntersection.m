function K = KernelIntersection(X1, X2)
   % computes a histogram intersection kernel
   %
   % Input:
   % - X1: an n x d dimensional feature matrix where n is the number of observations, and d is the number of features.
   % - X2: an m x d dimensional feature matrix where m is the number of observations, and d is the number of features.
   % Output:
   % - K: an n x m dimensional kernel matrix where K(i,j) stores a histogram intersection between the data point i in X1, and data point j in X2.
   [r,c] = size(X1);
   X3 = X2';
   [r3,c3] = size(X3);
   K = zeros(r,c3);
   for i = 1:r
       X1el = X1(i,:);
       for j = 1:c3
           el = X3(:,j);
           el = el';
           sum = 0;
           for m = 1:c
               sum = sum + min(el(m),X1el(m));
           end
           K(i,j) = sum;
       end
   end
   
end