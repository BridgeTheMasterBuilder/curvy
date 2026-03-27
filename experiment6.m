% Látum okkur vera gefið punktanna
% (x_1, y_1) = (1,1), (x_2, y_2) = (3,3)
% (x_3, y_3) = (7,8), (x_4, y_4) = (4,2)
% b_x = 6, b_y = 6
% c_x = 6, c_y = -9
% d_x = -9, d_y = 4
function leng = experiment6()
  fx = @(t) 1 + 6*t + 6*t^2 - 9*t^3;
  fy = @(t) 1 + 6*t -9*t^2 + 4*t^3;
  p = @(t) [fx(t), fy(t)];

  % leysa
  john = newton_partition(p, 6);
  leng = arc_length(p, 0, 1, 0.001);
  point = p(0);

  figure
  cla
  fplot(fx, fy, [0 1], 'blue', 'LineWidth', 3)
  axis square
  set(gca,'XLim',[0 8],'YLim',[0 8],'SortMethod','childorder','visible', 'on');

  partition_points = zeros(length(john), 2);
  for k = 1:length(john)
    partition_points(k, :) = p(john(k));
  end
  hold on
  plot(partition_points(:,1), partition_points(:,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 8)

  ball=line('color','r','Marker','o','MarkerSize',10,'LineWidth',2,'xdata',[],'ydata',[]);
  x = point(1);
  y = point(2);

  set(ball,'xdata',x,'ydata',y); drawnow; pause(0.01)

  for k = linspace(0,1,100)
    point = p(k);
    x = point(1);
    y = point(2);
    set(ball,'xdata',x,'ydata',y);
    drawnow;
    pause(0.01)
  end

end
