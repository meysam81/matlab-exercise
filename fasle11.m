% soal_1
function sikloid()
  r = 3;
  fi = 0:.01:2 * pi;
  x = r .* (1 - sin(fi));
  y = r .* (1 - cos(fi));
  plot(x, y);
end
sikloid();



% soal_2
function soal_2()
  x = 0:.09:100;
  y = sqrt((100 .* pow2(1 - .01 .* pow2(x))) ./ ...
    (pow2(1 - pow2(x) + 0.1 .* pow2(x))));
  plot(x, y);
  hold on;
  semilogx(y);
  semilogy(y);
  loglog(y);
  hold off;
end
soal_2();



% soal_3
function soal_3()
  x = 0:.02:5;
  y1 = 3 + exp(-x) .* sin(6 .* x);
  y2 = 4 + exp(-x) .* cos(6 .* x);
  plot(x, y1);
  hold on;
  plot(x, y2);
  xlabel('x');
  ylabel('y');
  title('title');
  hold off;
end
soal_3();



% soal_4
function soal_4()
  r = randn(1, 1000);
  hsit(r);
  title('[N, X] = hist(Y)');
  bar(r);
end
soal_4();



% soal_5
function soal_5()
  names = {'A', 'B', 'C', 'D', 'E'};
  grades = [42 85 67 20 5];
  pie(grades, names);
end
soal_5();



% soal_6
function soal_6()
  x = -4:.0805:4;
  y = -3:.0605:3;
  z = (x .* y .* (pow2(x) - pow2(y))) ./ (pow2(x) + pow2(y));
  meshgrid(x, y);
  hold on;
  myMesh = mesh(x, y, z);
  surf(x, y, z);
  contour(x, y, z);
  contourf(x, y, z);
  title('title');
  xlabel('x');
  ylabel('y');
  hold off;
end
soal_6();

% soal_7 : felan nemidounam

% soal_8
function myFunPlotter(f, x)
  g = f(x);
  plot(x, g);
  title('title');
  xlabel('x');
  ylabel('y');
end
myFunPlotter(@(x) sqrt(x) + exp(sin(x)), linspace(0, 2 .* pi, 100));

% soal_9 : 

function myPolyPlotter(n, x)
  hold on;
  for k = 1:n
    plot(x, power(x, k));
  end
  title('title');
  xlabel('x');
  ylabel('y');
end
myPolyPlotter();

% soal_10
function my_sierpinski(n)
  clf
  hold on
  N=n;
  x=zeros(1,N);y=x;
  for a=2:N
    c=randi([0 2]);    
    switch c
        case 0    
            x(a)=0.5*x(a-1);
            y(a)=0.5*y(a-1);
        case 1
            x(a)=0.5*x(a-1)+.25;
            y(a)=0.5*y(a-1)+sqrt(3)/4;
        case 2
            x(a)=0.5*x(a-1)+.5;
            y(a)=0.5*y(a-1);
    end
  end
  plot(x,y,'.')
  title('Sierpinski’s triangle made in matlab by Paulo Silva')
  legend(sprintf('N=%d Iterations',N))
end

% soal_11

function [xi, yi] = myFern(n)
  x = [0]; y = [0];
  for i = 2:n
    r = randi(100, 1);
    if r <= 1
      x = [x 0];
      tmp = y(end);
      y = [y, tmp.*.16];
    elseif r <= 8
      tmp1 = x(end);
      tmp2 = y(end);
      x = [x, .2.*tmp1-.26.*tmp2];
      y = [y, .23.*tmp1+.22.*tmp2+1.6];
    elseif r <= 15
      tmp1 = x(end);
      tmp2 = y(end);
      x = [x, -.15.*tmp1+.28.*tmp2];
      y = [y, .26.*tmp1+.24.*tmp2+.44];
    else
      tmp1 = x(end);
      tmp2 = y(end);
      x = [x, .85.*tmp1-.04.*tmp2];
      y = [y, -.04.*tmp1+.85.*tmp2+1.6];
    end
  end
  x = fliplr(x);
  y = fliplr(y);
  plot(x, y, '.');
end

% soal_12

function myParametricPlotter(x, y, t)
  contour3(x(t), y(t), t);
  title('title');
  xlabel('x');
  ylabel('y');
  zlabel('z');
end

% soal_13 : will work on it later!

function mySurfacePlotter(F, x, y, option)
  if isequal(option, 'surf')
    surf(x, y, F(x, y));
  elseif isequal(option, 'contour')
    contour(x, y, F(x, y));
  end
end