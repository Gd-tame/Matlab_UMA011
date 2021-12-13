clear;
clc;

n = input("Number of points: ");
for i=1:n
    x(i) = input("X values: ");
    y(i) = input("Y values: ");
end
p = input("Enter the point where you want to approximate the value: ");
for i=1:n
    l(i)=1;
    for j=1:n
        if(j~=i)
            l(i) = (p-x(j))*l(i)/(x(i)-x(j));
        end
    end
end
sum = 0;
for i=1:n
    sum = sum + (l(i)*y(i));
end
disp(sum);
