function J = computeCost(X, y, theta)
  % X shape is (m, 2) matrix
  m = length(y);
  i = 1 : m;
  J = (1 / (2 * m)) * sum( ((theta(1) + theta(2) .* X(i, 2)) - y(i)) .^2 ); 
  
end