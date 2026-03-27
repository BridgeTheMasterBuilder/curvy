x = @(t) 2*cos(t*2*pi)-cos(4*t*pi);
y = @(t) 2*sin(t*2*pi)-sin(4*t*pi);

dx = @(t) -4*sin(t*2*pi)*pi+4*sin(4*t*pi)*pi;
dy = @(t) 4*cos(t*2*pi)*pi-4*cos(4*t*pi)*pi;

t = 0; 

figure;

fplot(x, y, [0 1]);

axis([-3.5 2.5 -3 3]);

hold on;

ball = line('Color','r','Marker','o','MarkerSize',10,'LineWidth',2,'XData',[],'YData',[]);

while t <= 1.01
    xt = x(t);
    yt = y(t);

    set(ball, 'XData', xt, 'YData', yt); 
    drawnow; 
    pause(0.01);

    t = t + 0.01;
end

figure;

fplot(x, y, [0 1]);

axis([-3.5 2.5 -3 3]);

hold on;

ball = line('Color','r','Marker','o','MarkerSize',10,'LineWidth',2,'XData',[],'YData',[]);

s = 0.01;

while s <= 1
    t_s = t_star(dx,dy,s);
    
    xt = x(t_s);
    yt = y(t_s);

    set(ball, 'XData', xt, 'YData', yt); 
    drawnow; 
    pause(0.01);

    s = s + 0.01;
end