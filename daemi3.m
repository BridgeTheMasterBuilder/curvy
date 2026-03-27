const

figure;

fplot(fx, fy, [0 1]);

axis([0 1.5 0 2]);

hold on;

n = 4;

points = equipartition(P, n);

for i=1:n-1
    plot(fx(points(i)), fy(points(i)), '-o', 'MarkerSize',12)
end

n = 20;

figure;

fplot(fx, fy, [0 1]);

axis([0 1.5 0 2]);

hold on;

points = equipartition(P, n);

for i=1:n-1
    plot(fx(points(i)), fy(points(i)), '-o', 'MarkerSize',12)
end

