
% soal_1
function [S] = mySum(A)
  S = 0;
  for i = A
    S += i;
  end
end


% soal_2
function [y] = myChebyshevPolyl(n, x)
  if n == 0
    y = 1;
    elseif n == 1
      y = x;
    else
      y = 2 .* x .* myChebyshevPolyl(n - 1, x) - myChebyshevPolyl(n - 2, x);
  end
end
% rasm:
plot(0:.01:5, myChebyshevPolyl(0, 0:.01:5))
hold on;
plot(0:.01:5, myChebyshevPolyl(1, 0:.01:5))
plot(0:.01:5, myChebyshevPolyl(3, 0:.01:5))
hold off;



% soal_3
function [A] = myAckermann(m, n)
  if m == 0
    A = n + 1;
  elseif m > 0 && n == 0
    A = myAckermann(m - 1, 1);
  else
    A = myAckermann(m - 1, myAckermann(m, n - 1));
  end
end



% soal_4
function [N] = myNChooseK(n, k)
  %{
  if n == k
    N = 1;
  elseif k = 1
    N = n;
  else
    N = myNChooseK(n - 1, k) + myNChooseK(n - 1, k - 1);
  end
  %}
  N = factorial(n) ./ (factorial(k) .* factorial(n - k));
end



% soal_5
function [change] = myChange(cost, paid)
  if paid - cost > 100
    change = [100; myChange(cost, paid - 100)];
  elseif paid - cost > 50
    change = [50; myChange(cost, paid - 50)];
  elseif paid - cost > 20
    change = [20; myChange(cost, paid - 20)];
  elseif paid - cost > 10
    change = [10; myChange(cost, paid - 10)];
  elseif paid - cost > 5
    change = [5; myChange(cost, paid - 5)];
  elseif paid - cost > 1
    change = [1; myChange(cost, paid - 1)];
  elseif paid - cost > .25
    change = [.25; myChange(cost, paid - .25)];
  elseif paid - cost > .1
    change = [.1; myChange(cost, paid - .1)];
  elseif paid - cost > .05
    change = [.05; myChange(cost, paid - .05)];
  elseif paid - cost > 0
    change = [.01; myChange(cost, paid - .01)];
  end
end



% soal_6
function [G] = myGoldenRatio(n)
  fibo = [];
  a = 0; b= 1;
  fibo = [fibo, a];
  for i = 0:n + 1
    fibo = [fibo, b];
    c = b;
    b = a + b;
    a = c;
  end
  if n == 1
    G = 1;
  else
    G = fibo(n + 1) ./ fibo(n);
  end
end



% soal_7
function [gcd] = GCD(a, b)
  if a < b
    c = a;
    a = b;
    b = c;
  end
  if b == 0
    gcd = a;
  else
    gcd = GCD(b, mod(a, b));
  end
end



