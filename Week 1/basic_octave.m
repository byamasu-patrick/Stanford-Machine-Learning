% Create a matrix
A = [1 2; 3 4; 5 6; 7 8]
sz = size(A)
size(sz)
% Create variables in Octave

name = 'Byamasu Patrick';
age = 25;
% You can also use format long and format short to print a string
disp(sprintf('Hello %s', name));
disp(sprintf('Your age is %i', age));

V = 1:0.1:2

V = 1:6

W = 3 * ones(2,3) + 1.5
Z = zeros(3, 4)
% Generate random numbers
W = rand(3, 3)

W = randn(1, 3)

Z = -6 + sqrt(10) * (randn(1, 10))

hist(Z, 50)

% Identity Matrix
 eye(4)
 
% help eye
% help rand