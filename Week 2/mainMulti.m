% Loading the multivariate linear regression data
data = load('ex1data2.txt');
X = data(:, 1:2); % Loading the training data with two features
y = data(:, 3); 
m = length(y);

% Print out some data points
fprintf('First 10 examples from dataset: \n');
fprintf('X = [%.0f %.0f], y = %.0f \n', [X(1:10, :) y(1:10, :)]');

fprintf('Program paused. Press enter key to continue...\n');
pause;
% Feature scaling
fprintf('Normalize features...');
[X_norm, mu, sigma] = featureNormalize(X);
% Here we add the intercept to X
X = [ones(m, 1) X_norm];

% Now we should be able to compute the gradient descent
fprintf('Computer the gradient descent \n');
learning_rate = 0.01;
iterations = 1000;
% Initialize the parameters
theta = zeros(3, 1);
theta1 = zeros(3, 1);
J = computeCostMulti(X, y, theta);
% Compute the gradient descent algorithm
[theta, J_Hist] = gradientDescentMulti(X, y, theta, iterations, learning_rate);
[theta1, J_Hist1] = gradientDescentMulti(X, y, theta1, 1000, 0.005);
theta
% Plot the curve
figure;
plot(1:numel(J_Hist), J_Hist, '-b', 'LineWidth', 2);
figure;
plot(1:numel(J_Hist1), J_Hist1, 'r', 'LineWidth', 2);
hold on;
xlabel('# of Iterations');
ylabel('Cost per iterations');

% Predict new values
new_val = [1650 3];
X_norm = ((new_val -  mu) ./  sigma); 
X_new = [1 X_norm];
predict = X_new * theta;
fprintf('The new predicted value is %0.4f \n', predict);
theta = normalEquation(X, y);

% Predict the new price using the parameters found usig Normal Equation
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');
price = X_new * theta;
fprintf('The new predicted value is %0.4f \n', price);


