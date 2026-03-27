const

figure;

fplot(x, y, [0 1]);

axis([0 1.5 0 2]);

hold on;

n = 4;

points = equipartition_newton(dx, dy, n);

for i=1:n-1
    plot(xf(points(i)), yf(points(i)), '-o', 'MarkerSize',12)
end

n = 20;

figure;

fplot(x, y, [0 1]);

axis([0 1.5 0 2]);

hold on;

points = equipartition_newton(dx, dy, n);

for i=1:n-1
    plot(xf(points(i)), yf(points(i)), '-o', 'MarkerSize',12)
end

