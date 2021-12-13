clc;
clear all;
n=input('enter order of matrix')
eps=input('enter error')
w=input('enter value of weight')
% for i=1:n
%     for j=1:n+1
%         a(i,j)=input('enter matrix')
%     end
% end
a=[4 1 -1 1 -2;1 4 -1 -1 -1;-1 -1 5 1 0;1 -1 1 3 1]
for i=1:n
    x(i)=0;
     
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
x(i)=(1-w)*x(i)+w*((a(i,n+1)-sum)/a(i,i))
error=abs(x(i)-xold(i));
 end
 end