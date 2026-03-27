function x = newton(f, df, s, tol)
  x = s;
  max_iter = 50;

  for k = 1:max_iter
    fx = f(x);
    if abs(fx) < tol
      return;
    end

    dfx = df(x);
    if abs(dfx) < 1e-12
      error('Afleiðan of lítil.');
    end

    x_new = x - (fx / dfx);

    if abs(x_new - x) < tol
      x = x_new;
      return;
    end

    x = x_new;
  end

  error('Náði ekki að nálga lausn');
end
