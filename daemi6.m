x = @(t) 2*cos(t*2*pi)-cos(4*t*pi);
y = @(t) 2*sin(t*2*pi)-sin(4*t*pi);

dx = @(t) -4*sin(t*2*pi)*pi+4*sin(4*t*pi)*pi;
dy = @(t) 4*cos(t*2*pi)*pi-4*cos(4*t*pi)*pi;

t = 0; 

figure;

fplot(x, y, [0 1]);

axis([-3.5 2.5 -3 3]);

hold on;
