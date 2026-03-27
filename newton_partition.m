function t = newton_partition(f, n)
  TOL = 0.00001;
  lengd = arc_length(f,0,1,TOL);
  t = zeros(1, n+1); t(1) = 0; t(n+1) = 1;
  for k = 1:n-1
    target_length = (k/n) * lengd;
    g = @(x) arc_length(f,0,x,TOL) - target_length;
    t(k+1) = newton(g, t(k), 1, TOL);
  end
end
