% Load the data and plot it
fprintf('Plottinh data...\n');
data = load('ex1data1.txt');
% Reading comma separated values
X = data(:, 1);
y = data(:, 2);
m = length(y);  % Getting the number of training examples

plot(X, y, 'rx', 'MarkerSize', 10);
ylabel('Profit in $10,000s');
xlabel('Population of city in 10,000s');
% Add a column of ones to x
X = [ ones(m, 1), data(:, 1)];
% Initialize fitting parameters
theta = zeros(2, 1);

iterations = 1500;
learning_rate = 0.01;
% Here we compute the cost function and run the gradient descent optimizer
J = computeCost(X, y, theta);
disp(sprintf('The value of the cost function is: %0.2f', J));
[theta, J_Hist] = gradientDescent(X, y, theta, iterations, learning_rate);

disp(sprintf('The values of theta are: %0.4f ---- %0.4f', theta(1), theta(2)));
% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:, 2), X * theta, '-');
legend('Training data', 'Linear regression');
hold off;

% Predict the values for the new inputs
predict1 = [1, 3.5] * theta;
predict2 = [1, 7] * theta;

disp(sprintf('The first predicted value is: %0.4f', predict1));
disp(sprintf('The seccond predicted values is: %0.4f', predict2));
% Visualize the cost fuction
theta0_vls = linspace(-10, 10, 100);
theta1_vls = linspace(-1, 6, 100);

% Initialize J_vals to a matrix of zeros
J_vals = zeros(length(theta0_vls), length(theta1_vls));
% Fill out J_vals
for i = 1:length(theta0_vls)
    for j = 1:length(theta1_vls)
	  t = [theta0_vls(i); theta1_vls(j)];    
	  J_vals(i,j) = computeCost(X, y, t);
    end
end
% Plot the surface plot
figure;
surf(theta0_vls, theta1_vls, J_vals);
xlabel('\Theta 0');
ylabel('\Theta 1');
figure;
% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vls, theta1_vls, J_vals, logspace(-2, 3, 20))
xlabel('\Theta_0'); ylabel('\Theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 8, 'LineWidth', 1);
hold on;
figure;
plot([1 : iterations], J_Hist(:, 3), 'LineWidth', 2);
xlabel('# of iterations');
ylabel('Loss per iterations');

