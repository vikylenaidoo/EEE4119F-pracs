m = 1000;
b = 50;
u  = 500;

h = 0.5;
t0 = 0;
t_end = 120;
t = t0:h:t_end;
n = (t_end-t0)/h;

v = zeros(1, n+1);
v(1) = 0;

for i=1:n
    v(i+1) = v(i) + h*(u-b*v(i))/m;
end

plot(t, v);

