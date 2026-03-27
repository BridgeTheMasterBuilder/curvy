function points=equipartition_newton(dx, dy, n)
    const;

    points=zeros(1,n-1);

    for i=1:n-1
        s = i/n;

        points(i) = t_star_newton(dx, dy, s);
    end