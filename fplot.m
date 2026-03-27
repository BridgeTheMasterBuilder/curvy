function varargout = fplot(varargin)
  if nargin >= 3 && isa(varargin{1}, "function_handle") && isa(varargin{2}, "function_handle") ...
      && isnumeric(varargin{3}) && numel(varargin{3}) == 2
    fx = varargin{1};
    fy = varargin{2};
    trange = varargin{3};
    rest = varargin(4:end);

    t = linspace(trange(1), trange(2), 500);
    x = arrayfun(fx, t);
    y = arrayfun(fy, t);

    if nargout > 0
      varargout{1} = plot(x, y, rest{:});
    else
      plot(x, y, rest{:});
    end
    return;
  end

  if nargout > 0
    [varargout{1:nargout}] = builtin("fplot", varargin{:});
  else
    builtin("fplot", varargin{:});
  end
end
