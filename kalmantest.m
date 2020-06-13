A = [0 1;0 0];
B = [1 1]';
H = [0 1];
x = [0 0]';
u = 1;
p = [0 0;0 0];
R = 10;
Q = [0.001 0;0 0.001];

for i = 1:99
    x = A*x+B*u;
    p = A*p*A' + Q;
    k = p*H'*(H*p*H'+R)^-1;
    x = x+k*(05*i^1.1  -H*x);
    p = p - k*H*p;
    sensor(i) = H*x;
end
plot(sensor);