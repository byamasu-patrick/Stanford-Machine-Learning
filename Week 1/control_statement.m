v = zeros(10,1)

for i = 1:10,
  v(i) = 2^i;
end;
fprintf('Program paused, press enter key to conitnue. \n');
pause;
v
indeces = 1:10;
for i = indeces,
  disp(i);
end;

i = 1;
while i <= 5,
  v(i) =100;
  i = i + 1;
end;

i = 1;
while true,
  v(i) = 999;
  i = i + 1;
  if i == 6,
    break;
  end;
end;

disp(v);
v(1) = 2;
if v(1) == 1,
  disp('The value is one');
elseif v(1) == 2,
  disp('The value is two');
else
  disp('The value is not one or two.');
end;
pwd
% Octave search path (advanced/optional)
addpath('C:\Users\user\Documents\Machine Learning\Week 1')

[result1, result2] = squareThisNumber(5);

disp(result1);
disp(result2);

X = [1 1; 1 2; 1 3]
plot(X)
y = [1; 2; 3]
theta = [0; 1]

j = costFunctionJ(X, y, theta)

theta = [1.7  ; 0.3];
j = costFunctionJ(X, y, theta)

plot(X, y, 'rx', 'MarkerSize', 10)