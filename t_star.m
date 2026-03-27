function t_star=t_star(dx, dy, s)
    const

    g = @(x) (arc_length(dx,dy,0,x,TOL)/L)-s;

    t_star=bisect(g,0,1,TOL);