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

s = 0.01;

while s <= 1
    C = @(s) s^(1/3);
    t_s = t_star(dx,dy,C(s));
    
    xt = x(t_s);
    yt = y(t_s);

    set(ball, 'XData', xt, 'YData', yt); 
    drawnow; 
    pause(0.01);

    s = s + 0.01;
end

figure;

fplot(x, y, [0 1]);

axis([0 1.5 0 2]);

hold on;

ball = line('Color','r','Marker','o','MarkerSize',10,'LineWidth',2,'XData',[],'YData',[]);

s = 0.01;

while s <= 1
    C = @(s) s^2;
    t_s = t_star(dx,dy,C(s));
    
    xt = x(t_s);
    yt = y(t_s);

    set(ball, 'XData', xt, 'YData', yt); 
    drawnow; 
    pause(0.01);

    s = s + 0.01;
end

figure;

fplot(x, y, [0 1]);

axis([0 1.5 0 2]);

hold on;

ball = line('Color','r','Marker','o','MarkerSize',10,'LineWidth',2,'XData',[],'YData',[]);

s = 0.01;

while s <= 1
    C = @(s) sin(s*pi/2);
    t_s = t_star(dx,dy,C(s));
    
    xt = x(t_s);
    yt = y(t_s);

    set(ball, 'XData', xt, 'YData', yt); 
    drawnow; 
    pause(0.01);

    s = s + 0.01;
end

figure;

fplot(x, y, [0 1]);

axis([0 1.5 0 2]);

hold on;

ball = line('Color','r','Marker','o','MarkerSize',10,'LineWidth',2,'XData',[],'YData',[]);

s = 0.01;

while s <= 1
    C = @(s) 1/2+(1/2)*sin((2*s-1)*pi/2);
    t_s = t_star(dx,dy,C(s));
    
    xt = x(t_s);
    yt = y(t_s);

    set(ball, 'XData', xt, 'YData', yt); 
    drawnow; 
    pause(0.01);

    s = s + 0.01;
end


