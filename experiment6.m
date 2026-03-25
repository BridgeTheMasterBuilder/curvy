% Látum okkur vera gefið punktanna
% (x_1, y_1) = (1,1), (x_2, y_2) = (3,3)
% (x_3, y_3) = (7,8), (x_4, y_4) = (4,2)
% b_x = 6, b_y = 6
% c_x = 6, c_y = -9
% d_x = -9, d_y = 4
function leng = experiment6()
  fx = @(t) 1 + 6*t + 6*t^2 - 9*t^3;
  fy = @(t) 1 + 6*t -9*t^2 + 4*t^3;
end
