clc
clear
n= 4;

    x= [1 1.05 1.10 1.15];
    f= [0.1924 0.2414 0.2933 0.3492];

b= 1.09;
for j=1:n
    d(j,1)=f(j);
end
for i=2:n
    for j=2:i
              d(i,j)=(d(i,j-1)-d(i-1,j-1))/(x(i)-x(i-j+1));

    end 
end
sum=d(1,1);
product=1;
for i=2:n
 product=product*(b-x(i-1));
        sum=sum+d(i,1)*product;
end

fprintf('value of f(%f) is =%f',b,sum)