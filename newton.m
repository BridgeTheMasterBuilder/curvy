function x = newton(f, a, b, tol)
  x = (a + b) / 2;
  max_iter = 50;
  h = 1e-6;

  for k = 1:max_iter
    fx = f(x);
    if abs(fx) < tol
      return;
    end

    dfx = (f(x + h) - f(x - h)) / (2 * h);
    if abs(dfx) < 1e-12
      error('Afleiðan of lítil.');
    end

    x_new = x - (fx / dfx);

    if x_new < a || x_new > b
      x_new = (a + b) / 2;
    end

    if abs(x_new - x) < tol
      x = x_new;
      return;
    end

    x = x_new;
  end

  error('Náði ekki að nálga lausn');
end
