function [cost, theta] = gradDescent(X, y, theta, iterations, learning_rate)
  m = length(y)
  indeces = 1 : iterations;
  J_Hist = zeros(iterations, 3);
  % So now let compute the partial derivative of theta 0 and 1
  for i = indeces,
    [cost, grad] = costFunctionLG(X, y, theta);
    theta = theta - (learning_rate * grad');

  endfor
end