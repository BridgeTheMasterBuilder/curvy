x = @(t) 0.5+0.3*t+3.9*t^2-4.7*t^3;
y = @(t) 1.5+0.3*t+0.9*t^2-2.7*t^3;

dx = @(t) 0.3+7.8*t-14.1*t^2;
dy = @(t) 0.3+1.8*t-8.1*t^2;

t = 0; 

figure;

fplot(x, y, [0 1]);

axis([0 1.5 0 2]);

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

axis([0 1.5 0 2]);

hold on;

ball = line('Color','r','Marker','o','MarkerSize',10,'LineWidth',2,'XData',[],'YData',[]);

while s <= 1.01
    t_s = t_star(dx,dy,s);
    
    xt = x(t_s);
    yt = y(t_s);

    set(ball, 'XData', xt, 'YData', yt); 
    drawnow; 
    pause(0.01);

    s = s + 0.01;
end