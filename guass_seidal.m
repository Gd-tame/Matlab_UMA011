clc;
clear all;
n= 3
eps=0.001
%w=input('enter value of weight')
% for i=1:n
%     for j=1:n+1
%         a(i,j)=input('enter matrix')
%     end
% end
%a=[4 1 -1 1 -2;1 4 -1 -1 -1;-1 -1 5 1 0;1 -1 1 3 1]
a=[4.63 -1.21 3.22 2.22;-3.07 5.48 2.11 -3.177;1.26 3.11 4.57 5.11 ;]
for i=1:n
    x(i)=1;
     
end
error=1;
while  (error>eps)
    xold(i)=x(i);
 for i=1: n
     sum=0;
 for j=1: n
 if i~=j
sum = sum + a(i,j)*x(j);
 end 
 end
x(i)=((a(i,n+1)-sum)/a(i,i));
error=abs(x(i)-xold(i));
 end
end
 x