clc
clear all
%f=@(x) (sin(x)/(1+x^2))
%f=@(x)(cos(x)*cos(x));
%f=@(x) (exp(-x^2)*cos(x));
%f=@(x) (1/(x*log(x)));
 f=@(x) x*exp(2*x);
% f=@(x) (sqrt((1+5*x^2)/(1+x^2)));
 a= 0 ;
 b= 4;
 n= 10;
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+h*i;
    if rem(i,2)==0
    sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
    
    sum=sum+f(a)+f(b);
    ans=sum*(h/3);
fprintf('The value of y at p is %f',ans);