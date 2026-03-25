function t = path_lengthN(f, n)
    TOL = 0.001;
    g = @(x) (arc_length(f,0,x,TOL)/arc_length(f,0,1,TOL))-s;
    g(0);
    g(1);
    newton(g,0,1,TOL);
end
