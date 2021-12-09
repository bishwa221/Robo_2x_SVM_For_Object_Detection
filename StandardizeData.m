function X_new=StandardizeData(X)
   % standardizes data
   %
   % Input:
   % - X: an n x d dimensional feature matrix where n is the number of observations, and d is the number of features.
   % Output:
   % - X_new: an n x d dimensional normalized feature matrix.
   X_mean = mean(X); %1*n matrix
   X_std = std(X); %1*n standard deviation matrix
   [r,c] = size(X);
   X_new = zeros(r,c);
   for i = 1:c
       X_new(:,i) = (X(:,i) - X_mean(1,i))/X_std(1,i);
   end
end