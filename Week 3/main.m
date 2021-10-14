% Load the data
clear ; close all; clc
%
data = load('ex2data1.txt');
X = data(:, [1, 2]);
y = data(:, 3);
[m, n] = size(X);

% Plotting the data on the scatter plot
fprintf('Plotting the data with the + indicating (y = 1) and o indication (y = 0) ');
plotData(X, y);
hold on;

xlabel('Exam 1 score');
ylabel('Exam 2 score');

legend('Admitted', 'Not Admitted');
X = [ones(m, 1) X];
initial_theta = zeros(n + 1, 1);
g = sigmoid(X * initial_theta);

[cost, grad] = costFunctionLG(initial_theta, X, y)
%costFunctionLG(X, y, initial_theta);
%size(cost)

fprintf('\nCost at the initial values of theta(zeros): %f \n', cost);
fprintf('Gradient at the initial values of theta(zeros): %f \n', grad);

fprintf('Program paused. Press enter to continue. \n');
pause;
% Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);
% Run fminunc function to obtain the optimal values of theta
% This function will return theta and cost function
[theta, cost] = fminunc(@(t)(costFunctionLG(t, X, y)), initial_theta, options);
fprintf('\nCost at the initial values of theta(zeros): %f \n', cost);
fprintf('Gradient at the initial values of theta(zeros): %f \n', theta);

fprintf('Program paused. Press enter to continue. \n');
pause;