function [theta, J_Hist] = gradientDescent(X, y, theta, iterations, learning_rate)
  m = length(y);
  indeces = 1 : iterations;
  J_Hist = zeros(iterations, 3);
  % Now let compute the partial derivative of the theta 0 and theta 1
  for i = indeces,
    k = 1 : m;
    dt1 = sum((theta(1) + theta(2) .* X(k, 2)) - y(k)) / m;
    dt2 = sum(((theta(1) + theta(2) .* X(k, 2)) - y(k)) .* X(k, 2)) / m;
    
    theta(1) = theta(1) - (learning_rate * dt1);
    theta(2) = theta(2) - (learning_rate * dt2);
    % Save the history of the values of 
    J_Hist(i, 1) = theta(1);
    J_Hist(i, 2) = theta(2);
    J_Hist(i, 3) = computeCost(X, y, theta);
    
  endfor
end