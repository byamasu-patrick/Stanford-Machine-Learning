function pred = predict(X, theta)
  % PREDICT Predict whether the label is 0 or 1 using learned logistic 
  % regression parameters theta
  % hreshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)
  m = size(X, 1);
  pred = zeros(m, 1);
  
  pred = sigmoid(theta' * X) >= 0.5
  
end