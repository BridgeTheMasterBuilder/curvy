function progress_curve(f, s, C)
    TOL = 0.001;

    c = C(s);

    g = @(x) (arc_length(f,0,x,TOL)/arc_length(f,0,1,TOL))-c;

    bisect(g,0,1,TOL)