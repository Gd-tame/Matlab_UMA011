format short;
clear;
clc;

A = [2 -1 0;-1 2 -1;0 -1 2];
x = [1;1;1];
choice1 = menu("Pick the choice: ","Largest","Smallest","Near to...");
if choice1==1
    B = A;
elseif choice1==2
    B = inv(A);
else
    lam0 = input("Enter the value of lambda which is nearest to: ");
    D = A - lam0.*eye(size(A));
    B = inv(D);
end

iter = 1;
maxerr = input("Enter the tolerance value: ");
err = 10000;    %Initial Error
lam1 = Inf;     %Set Initial Eigen Value
fprintf("\t Iter \t Eigen Value \t Eigen Vector \n");
fprintf("\t =================================== \n");
while all(err>maxerr)
    xold = x;   %Previous Eigen Vector
    Y = B*x;    %Compute New Matrix
    eigval = max(abs(Y));   %Compute eigen Value (Largest)
    eigvec = Y./eigval;     %Compute new eigen Value
    x = eigvec; %Store eigen vector values
    err = abs(sum(xold - x));   %Compute error
    lam1 = eigval;          %Update eigen value
    disp([iter lam1 x']);
    iter = iter+1;
end
fprintf("Method converge in %d iteration \n",iter-1);
disp("=====================");
if choice1 == 1
    fprintf("The greatest eigen value is %5.5f \n",lam1);
elseif choice1 == 2
    fprintf("The smallest eigen value is %5.5f \n",1/lam1);
elseif choice1 == 3
    fprintf("Eigen Value nearest to %5.3f is %5.5f \n",lam0,lam0+1/lam1);
end
disp("The corresponding eigen vector is: ");
fprintf("\t %5.5f \n",x);
