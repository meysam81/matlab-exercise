
function ketab_1()
  p1 = [3, 4];
  p2 = [5, 9];
  fasele = ((p1(1) - p2(1)) .^ 2 + (p1(2) - p2(2)) .^ 2) .^ (1 / 2)
end
ketab_1();

function ketab_2()
  N = 1
  s = (2 * (sqrt(2))) / 9801;
  for k = 0:N
    tmp = factorial(4 * k);
    tmp *= (1103 + 26390 * k);
    tmp /= power(factorial(k), 4);
    tmp /= power(396, (4 * k));
    s += tmp;
  end
  my_pi = 1 / s
  matlab_pi = pi
end
format long
ketab_2();
format loose

function ketab_3()
  x = 2;
  s = exp(x) - exp(-x);
  s /= 2;
  my_hyper = s
  matlab_hyper = sinh(2)
end
ketab_3();

function ketab_4()
  result = [[zeros(2, 5); randi(10, 3, 5)] ones(5, 1)]
end
ketab_4();

function ketab_5()
  s1 = 'HELLO';
  s2 = 'hello';
  result = strcmp(s1, s2)
  result = strcmp(lower(s1), s2)
  result = strcmp(s1, upper(s2))
end
ketab_5();

function ketab_6()
  class = [];
  class(1).title = 'E7';
  class(1).semester = 'Spring 2011';
  class(1).enrollment = 405;
  
  class(2).title = 'E8';
  class(2).semester = 'Summer 2012';
  class(2).enrollment = 894;
  
  class(3).title = 'E9';
  class(3).semester = 'Fall 2013';
  class(3).enrollment = 111;
  
  result = strcat(class(1).title, ' : ', class(1).semester)
  
end
ketab_6();

function ketab_7()
  class = {};
  
  class{1, 1} = 'E7';
  class{1, 2} = 'Spring 2011';
  class{1, 3} = 405;
  
  class{2, 1} = 'E8';
  class{2, 2} = 'Winter 2009';
  class{2, 3} = 357;
  
  class{3, 1} = 'E9';
  class{3, 2} = 'Spring 2017';
  class{3, 3} = 147;
  
  result = strcat(class{1, 1}, ' : ', class{1, 2})
  
end
ketab_7();


%ketab 8
myCheckerBoard(4)
function [M] = myCheckerBoard(n)
  mat = zeros(n);
  for i = 1:n
    mat(i, i) = 1;
    if mod(i, 2) == 1
      start = 1;
    else
      start = 2;
    end
    for j = start:2:n
      mat(i, j) = 1;
    end  
  end
  M = mat;
end



% ketab_9

function [indices] = myWithinTolerance(A, a, tol)
  [dummy indices] = find(abs(A - a) < tol);
end
[d] = myWithinTolerance(0:3, 1.5, .75)



% book_11
function [tip] = myTipCalc(bill, party)
  if party < 6
    tip = 0.15 * bill;
  elseif party < 8
    tip = 0.18 * bill;
  elseif party < 11
    tip = 0.20 * bill;
  else
    tip = 0.25 * bill;
  end
end




% book_12
function [f] = myMultOperation(a, b, operation)
  if isequal(operation,'plus')
    f = a + b;
  elseif isequal(operation,'minus')
    f = a - b;
  elseif isequal(operation,'mult')
    f = a .* b;
  elseif isequal(operation,'div')
    f = a ./ b;
  elseif isequal(operation,'pow')
    f = a .^ b;
  end
end



% book_13; hanouz jaye kar dare
function [S] = myInsideTriangle(x, y)
  if x > 0 && x < 1
    if y > 0 && y < 1
      S = 'inside';
    elseif y == 0 || y == 1
      S = 'border';
    else
      S = 'outside';
    end
  elseif x == 0 || x == 1
    S = 'border';
  else
    S = 'outside';
  end
end

% book_14
function [nRoots, r] = myNRoots(a, b, c)
  delta = (b .^ 2) - (4 * a * c);
  if delta > 0
    nRoots = 2;
    r = [((-b + sqrt(delta)) / (2 * a)) ((-b - sqrt(delta)) / (2 * a))];
  elseif delta = 0
    nRoots = 1;
    r = (-b) / (2 * a);
  else
    nRoots = -2;
    r = [complex((-b + sqrtm(delta)) / (2 * a)) ...
      complex((-b - sqrtm(delta)) / (2 * a))];
  end
end



% book_15
function [h] = mySplitFunction(f, g, a, b, x)
  if x <= a
    h = f(x);
  elseif x >= b
    h = g(x);
  else
    h = 0;
  end
end

% answer to book_16 = 1000

% book_17
function [M] = myNMax(A, N)
  M = sort(A, 'descend')(1:N);
end


% book_18
function [years] = mySavingPlan(P0, i, goal)
  p1 = P0;
  c = 0;
  while p1 < goal
    c += 1;
    p1 = (1 + i) * P0;
    P0 = p1;
  end
  years = c;
end


% book_19
function [primes] = myNPrimes(N)
  c = 0;
  iter = 2;
  primes = [];
  while c != N
    aval = true;
    for i = 2:1 + sqrt(iter)
      if mod(iter, i) == 0
        aval = false;
        break;
      end
    end
    if aval
      primes = [primes iter];
      c += 1;
    end
    iter += 1;
  end
end


% book_20
function [fibPrimes] = myNFibPrimes(N)
  a = 2; b = 3;
  count = 0;
  fibPrimes = [];
  while count != N
    aval = true;
    for i = 2:1 + sqrt(a)
      if mod(a, i) == 0
        aval = false;
        break;
      end
    end
    if aval
      fibPrimes = [fibPrimes a];
      count += 1;
    end
    t = b;
    b = a + b;
    a = t;
  end
end