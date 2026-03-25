set(gca, 'XLim', [-2, 2], 'YLim', [-2, 2], ...
         'SortMethod', 'childorder', 'Visible', 'on');
cla;
axis square;

% 1. Define initial position FIRST
x = 0;
y = 0;

% 2. Create the ball
ball = line('Color', 'r', 'Marker', 'o', 'MarkerSize', 10, ...
            'LineWidth', 2, 'XData', [], 'YData', []);

% 3. Animation loop
for t = 0:0.01:10
    x = cos(t);   % whatever your motion equation is
    y = sin(t);

    set(ball, 'XData', x, 'YData', y);
    drawnow;
    pause(0.01);
end
