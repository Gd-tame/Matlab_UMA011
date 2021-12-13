clear
clc
X = input("Enter the list of abscissas: ");
Y = input("Enter the list of ordinates: ");
F = input("Enter 1 for linear fit, 2 for quadratic fit and so on... :");
n = length(X);
N = F+1;
A = zeros(N,N);
for i = 1:N
    for j = 1:N
        A(i,j) = sum(X.^(i+j-2));
    end
end
B = zeros(N,1);
for k = 1:N
    B(k) = sum((X.^(k-1)).*Y);
end
U = A\B;
disp("Your polynomial is: ");
for k = N:-1:2
    fprintf("+(%.2fx^%d)",U(k),k-1);
end
fprintf("+(%.2f)\n",U(1));