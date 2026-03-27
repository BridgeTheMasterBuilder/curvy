function points=equipartition(f, n)
    TOL = 0.001;

    points=zeros(1,n-1);

    for i=1:n-1
        s = i/n;

        points(i) = path_length(f, s);
    end
        