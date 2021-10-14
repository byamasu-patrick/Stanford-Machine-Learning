% Perform feature normalization
function [X_norm, mu, sigma] = featureNormalize(X)
  mu = mean(X);
  sigma = std(X);
  % Normalize the features for all training example
  t = ones(length(X), 1);
  X_norm = (X - (t * mu)) ./ (t * sigma); 
  
end