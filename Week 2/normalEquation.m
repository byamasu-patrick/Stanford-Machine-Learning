function theta = normalEquation(X, y)
  % Calculate the normal equation
  theta = pinv(X' * X) * (X' * y);
  
end