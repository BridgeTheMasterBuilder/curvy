function equipartition(f, n)
    TOL = 0.001;

    points=zeros(1,n);

    for i=1:n
        s = 1/n * i;

        points(i) = path_length(f, s);
    end

    points
        