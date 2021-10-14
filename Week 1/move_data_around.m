% this will help you how to move data around
cd 'C:\Users\user\Documents\Machine Learning\Week 1\'
% Create a matrix
A = [1 2; 3 4; 5 6; 7 8]
B = [9 10; 11 12; 13 14; 15 16]

C = [1 1; 2 2]
disp(sprintf('Matrix multiplication'));
A * C
disp(sprintf('Element wise multiplication'));
A .* B
%
sz = size(A)
size(sz)

size(A, 1)
size(A, 2)

V = [1 2 3 4]
length(V)

% Loading data in the my app
%load('features.dat')
% clear features v = priceY(1:10)
disp(sprintf('ELement wise exponents'));
A .^ 2
disp(sprintf('Element wise logarithm'));

exp(log(A))
load features.txt;
% who whos 
whos


data = features(1:3);

v = [-1 -2; -3 -4]
abs(v)
[val ind] = max(A)

disp(sprintf('Find all the element that are less than 3'));
a = [1 2 3 4 5 6]
find(a<3)

sum(a)
prod(a)
% Arrondir floor and ceil
max(rand(3), rand(3))

max(A, [], 1)
max(A, [], 2)
A = magic(9)
sum(A, 1)
eye(9)

A .* eye(9)

sum(sum(A .* eye(9)))

pinv(A)