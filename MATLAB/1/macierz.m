clear all;
n=4;
m=12;
A=eye(m,n);
B=A;

if (m<=n)
    A=B(m:-1:1,:);
else
    A=B(:,n:-1:1);
end;

A|B
