function t_star= t_star_newton(dx, dy, s)
    const

    g = @(x) (arc_length(dx,dy,0,x,TOL)/L)-s;

    dg = @(x) sqrt(dx(x)^2+dy(x)^2)/L;

    t_star=newton(g,dg,s,TOL);
end
