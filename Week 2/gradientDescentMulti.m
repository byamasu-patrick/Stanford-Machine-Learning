function [theta, J_Hist] = gradientDescentMulti(X, y, theta, iterations, learning_rate)
  m = length(y);
  indeces = 1 : iterations;
  J_Hist = zeros(iterations, 1);
  % Running the gradient descent
  for i = indeces
    dtheta = (1 / m) * ( ((X * theta) - y)' * X )';
    %theta = theta - (learning_rate * ( 1 / m ) * (((X * theta) - y)' * X)');
    %theta
    theta = theta - (learning_rate * dtheta);
    
    J_Hist(i) = computeCost(X, y, theta);
    
  end
  
end
