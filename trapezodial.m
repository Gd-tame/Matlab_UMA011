clc
clear all
%f=@(x) (sin(x)/(1+x^2))
%f=@(x)(cos(x)*cos(x));
f=@(x) exp(-x^2);
%f=@(x) (1/(x*log(x)));
% f=@(x) (exp(-x^2)*cos(x));
%f=@(x) sqrt(1+(4*(x^2))/(1+(1+x^2)^2))^2;
% f=@(x) (sqrt((1+5*x^2)/(1+x^2)));
 a=0 ;
 b=1;
 n=10;
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+h*i;
    sum=sum+2*f(x);
end
    
    sum=sum+f(a)+f(b);
    ans=sum*(h/2)
fprintf('The ans is %f',ans);