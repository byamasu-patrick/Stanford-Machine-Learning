function J = computeCostMulti(X, y, theta)
  m = length(y); % Number of training examples
  % A vectorized version of J
  J = (1 / (2 * m)) * (((X * theta) - y)' * ((X * theta) - y));
  % Non vectorized version of J
  %J = (1 / (2 * m)) * sum( ((X * theta) - y) .^ 2);

end