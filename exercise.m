function soal_1()
  x = input("tavan 2: ");
  y = power(x, 2)
end
soal_1();


function soal_2()
  x = input("mohit masahat e dayere: ");
  mohit = 2 * pi * x
  masahat = pi * x * x
end
soal_2();


function soal_3()
  x = input("toul: ");
  y = input("arz: ");
  mohit = (x + y) * 2
  masahat = x * y
end
soal_3();

function soal_4()
  x = input("miangin 1: ");
  y = input("miangin 2: ");
  z = input("miangin 3: ");
  miangin = sum([x, y, z]) / 3
end
soal_4();

function soal_5()
  x = input("char2double: ");
  char2double = double(x)
end
soal_5();


function soal_6()
  x = input("zoj ya fard: ");
  zojYaFard = isequal(0, mod(x, 2))
end
soal_6();

function soal_7()
  x = input("mosalas 1: ");
  y = input("mosalas 2: ");
  z = input("mosalas 3: ");
  if isequal(x, y, z)
    mosalas = "motesavi o al azla'e"
  elseif isequal(x, y) | isequal(x, z) | isequal(y, z)
    mosalas = "motesavi o al sagheyn"
  else
    mosalas = "mokhtalef o al azla'e"
  end
end
soal_7();

function soal_8()
  x = input("mosalas 1: ");
  y = input("mosalas 2: ");
  z = input("mosalas 3: ");
  if isequal(x * x, y * y + z * z)
    mosalas = y * z / 2
  elseif isequal(x * x + y * y , z * z)
    mosalas = y * x / 2
  elseif isequal(y * y , x * x + z * z)
    mosalas = x * z / 2
  else 
    mosalas = x + y + z
  end
end
soal_8();

function soal_9()
  x = input("max 1: ");
  y = input("max 2: ");
  z = input("max 3: ");
  myMax = max([x, y, z])
end
soal_9();


function soal_10()
  x = input("mah e shamsi: ");
  if x >= 1 & x <= 6
    rouz = 31
  elseif x >= 7 && x <= 11
    rouz = 30
  elseif x == 12
    rouz = 29
  end
end
soal_10();

function soal_11()
  x = input("adad ya harf: ");
  x = lower(x);
  if isequal(x, 'a') || isequal(x, 'e') || isequal(x, 'i')...
   || isequal(x, 'o') || isequal(x, 'u')
    adadYaHarf = "seda dar"
  elseif (x >= 'a' && x <= 'z')
    adadYaHarf = "bi seda"
  elseif (isnumeric(x))
    adadYaHarf = 'adad'
  else
    adadYaHarf = 'sayere karakter ha'
  end
end
soal_11();

function soal_12()
  a = input("moadele a: ");
  b = input("moadele b: ");
  c = input("moadele c: ");
  temp = b .^ 2 - 4 * a * c;
  delta = temp
  if temp > 0
    tedad = "2 rishe"
    meghdar1 = (- b + sqrt(temp)) / (2 * a)
    meghdar1 = (- b - sqrt(temp)) / (2 * a)
  elseif temp == 0
    tedad = "1 rishe mozaaf"
    meghdar = (- b) / (2 * a)
  else
    tedad = "bedoune rishe"
  end
end
soal_12();


function soal_13()
  for i = 100:2:999
    i
  end
end
soal_13();


function soal_14()
  for i = 999:-2:100
    i
  end
end
soal_14();


function soal_15()
  for i = 9999:-2:1000
    if mod(i, 7) == 0 && mod(i, 3) != 0
      i
    end
end
soal_15();


function soal_16()
  x = input("maghsoum alayh va aval: ");
  maghsoum = [1, x];
  counter = 2;
  for i = 2:x - 1
    if mod(x, i) == 0
      counter += 1;
      maghsoum = [maghsoum, i];
    end
  end
  counter
  sort(maghsoum)
  aval = (counter == 2)
end
soal_16();

function soal_17()
  x = input("bmm & kmm: ");
  y = input("bmm & kmm: ");
  hold1 = x;
  hold2 = y;
  if x < y
    t = x;
    x = y;
    y = t;
  end
  while y > 0
    t = y;
    y = mod(x, y);
    x = t;
  end
  for i = 2:x
    if mod(hold1, i) == 0 && mod(hold2, i) == 0
      i
    end
  end
  bmm = x
  kmm = hold1 * hold2 / x
end
soal_17();

function soal_18()
  x = input("jame argham: ");
  counter = 0; sm = 0;
  while x > 0
    counter += 1;
    sm += mod(x, 10);
    x = floor(x / 10);
  end
  sum = sm
  counter
end
soal_18();

function soal_19()
  N = 100;
  in = [];
  mosbat = 0;
  for i = 1:N
    tmp = input(strcat(num2str(i), ": "));
    if tmp > 0
      mosbat += 1;
    end
    in = [in, tmp];
  end
  summation = sum(in)
  average = summation / N
  mosbat
end
soal_19();

function soal_20()
  x = input("factorial: ");
  f = factorial(x)
end
soal_20();

function soal_21()
  N = 100;
  in = [];
  for i = 1:N
    tmp = input(strcat(num2str(i), ": "));
    in = [in, tmp];
  end
  maxNum = max(in)
  minNum = min(in)
  in = sort(in);
  top5 = in(length(in) - 4:end)
  for i = sort(in, 'descend')
    if i < 10
      topFailure = i
      break
    end
  end
  c = 0; s = 0;
  for i = sort(in, 'descend')
    if i < 15
      break
    end
    s += i;
    c += 1;
  end
  averageAbove15 = s / c
end
soal_21();

function soal_22()
  x = input("maghloub: ");
  hold = x;
  tmp = 0;
  while x > 0
    tmp = tmp * 10 + (mod(x, 10));
    x = floor(x / 10);
  end
  haseleZarb = tmp * hold
end
soal_22();

function soal_23()
  x = input("nardebani: ");
  y = input("nardebani: ");
  if x < y
    t = x;
    x = y;
    y = t;
  end
  while y > 0
    t = y;
    y = mod(x, y);
    x = t;
  end
  bmm = x
end
soal_23();

function soal_24()
  for i = 1000:9999
    c = true;
    for j = 2:floor(i .^ (1 / 2)) + 1
      if mod(i, j) == 0
        c = false;
        break;
      end
    end
    if c
      i
    end
  end
end
soal_24();

function soal_25()
  N = 50;
  a = [];
  for i = 1:N
    tmp = input(strcat(num2str(i), ": "));
    a = [a, tmp];
  end
  m = max(a);
  m = 20 - m;
  for i = 1:N
    a(i) += m;
  end
  a
end
soal_25();

function soal_26()
  N = 50;
  a = [];
  for i = 1:N
    tmp = input(strcat(num2str(i), ": "));
    a = [a, tmp];
  end
  avg = sum(a) / N; s = 0;
  for i = 1:N
    s += abs(a(i) - avg);
  end
  averageOfDeviation = s / N
  mostFrequent = mode(a)
  uniqueReverse = sort(unique(a), 'descend')
end
soal_26();

function soal_27()
  x = input("mabnaye 10: ");
  a = [];
  while x > 0
    rem = mod(x, 2);
    a = [a, rem];
    x = floor(x / 2);
  end
  decimal2Binary = fliplr(a)
end
soal_27();

function soal_28()
  x = input("motegharen: ");
  hold = x;
  tmp = 0;
  while x > 0
    tmp = tmp * 10 + (mod(x, 10));
    x = floor(x / 10);
  end
  motegharen = (hold == tmp)
end
soal_28();

function soal_29()
  N = 50;
  a = {};
  c = 0;
  mx = "";
  esme6Harfi = 0;
  for i = 1:N
    tmp = input(strcat(num2str(i), ": "));
    if length(tmp) > length(mx)
      mx = tmp;
    end
    if length(tmp) == 6
      esme6Harfi += 1;
    end
    try
      if strfind(tmp, "k")(1) == 1
        c += 1;
      end
    catch me
    end
    a{end + 1} = tmp;
  end
  shorouBaK = c;
  c = 0;
  a_unique = unique(a);
  a_count = zeros(size(a_unique));
  for i = 1:length(a_unique)
    a_count(i) = sum(ismember(a, a_unique(i)));
    if a_count(i) > 1
      c += 1;
    end
  end
  esmeMoshtarak = c
  c = 0;
  for i = a
    if length(i) == 6
      c += 1;
    end
  end
  esme6Harfi
  shorouBaK
  mx
end
soal_29();

function soal_30()
  c = zeros(3, 4);
  for i = 1:3
    for j = 1:4
      c(i, j) = input(strcat("matrix[", num2str(i), "][", num2str(j), "] = "));
    end
  end
  c
  sumRow = sum(c)
  sumCol = sum(c, 2)
  sumTotal = sum(sum(c))
  matrixTranspose = c'
end
soal_30();

function soal_31()
  N = input("Enter the matrix size: ");
  c = zeros(N, N);
  manfi = 0;
  for i = 1:N
    for j = 1:N
      tmp = input(strcat("matrix[", num2str(i), "][", num2str(j), "] = "));
      if tmp < 0
        manfi += 1;
      end
      c(i, j) = tmp;
    end
  end
  c
  sumOfFirstCol = sum(c(:, 1))
  mul = 1;
  for i = c(end, :)
    mul *= i;
  end
  multiplyOfLastRow = mul
  maxDiagonal = max(diag(c))
  zerosInAntiDiagonal = sum(ismember(diag(c'), 0))
  tedadAnasereManfi = manfi
  row_1 = input("Enter the row size of matrix 1: ");
  col_1 = input("Enter the col size of matrix 1: ");
  mat_1 = zeros(row_1, col_1);
  for i = 1:row_1
    for j = 1:col_1
      tmp = input(strcat("A[", num2str(i), "][", num2str(j), "] = "));
      mat_1(i, j) = tmp;
    end
  end
  row_2 = input("Enter the row size of matrix 2: ");
  col_2 = input("Enter the col size of matrix 2: ");
  mat_2 = zeros(row_2, col_2);
  for i = 1:row_2
    for j = 1:col_2
      tmp = input(strcat("A[", num2str(i), "][", num2str(j), "] = "));
      mat_2(i, j) = tmp;
    end
  end
  if col_1 == row_2
    zarb = mat_1 * mat_2
  end
end
soal_31();

function soal_32()
  sal = 2;
  r = 4;
  noMedal = 0;
  maxMedal = 0;
  maxMedalYear = 0;
  medal  = zeros(sal, r);
  for i = 1:sal
    tmp = input(strcat("year[", num2str(i), "] = "));
    if sum(ismember(tmp(2:end), 0)) == 3
      noMedal += 1;
    end
    if sum(tmp(2:end)) > maxMedal
      maxMedal = sum(tmp(2:end));
      maxMedalYear = i;
    end
    medal(i, :) = tmp;
  end
  koleMedalha = sum(sum(medal(:, 2:end)))
  keleTalaHa = sum(medal(:, 2))
  noMedal
  bishAz10Medal = 0;
  for i = 1:sal
    emtiaz = 3 * medal(i, 2) + 2 * medal(i, 3) + medal(i, 4);
    result = strcat("year ", num2str(1359 + i), " score ", num2str(emtiaz))
    if emtiaz > 10
      bishAz10Medal += 1;
    end
  end
  bishAz10Medal
end
soal_32();

function soal_33()
  N = 5;
  name = [];
  result = [];
  for i = 1:N
    tmp = input(strcat("name[", num2str(i), "] = "));
    if tmp(1) == tmp(end)
      result = [result; tmp];
    end
    name = [name; tmp];
  end
  result
  sortedResult = sort(result)
end
soal_33();

function soal_34()
  s = 1;
  for i = 2:1000
    s += (1 / i);
  end
  s
end
soal_34();

function soal_35()
  s = 1;
  sign = -1;
  for i = 2:1000
    tmp = (1 / i);
    tmp *= sign;
    s += tmp;
    sign *= -1;
  end
  s
end
soal_35();

function soal_36()
  sourat = 1;
  makhraj = 2;
  for i = 3:100
    if mod(i, 2) == 0
      makhraj *= i;
    else
      sourat *= i;
    end
  end
  result = sourat / makhraj
end
soal_36();

function soal_37()
  s = 0;
  for i = 1:2:99
    sourat = i * (i + 1);
    makhraj = i + i + 1;
    s += (sourat / makhraj);
  end
  s
end
soal_37();

function soal_38()
  N = input("Enter the number of iterations: ");
  s = (1 / 2);
  sign = -1;
  for i = 2:N
    tmp = 0;
    for j = 2:N + 1
      tmp += (1 / j);
    end
    tmp *= sign;
    sign *= -1;
    s += tmp;
  end
  s
end
soal_38();

function soal_39()
  N = input("Enter the number of iterations: ");
  x = input("Enter the x: ");
  s = x;
  sign = -1;
  for i = 2:N
    tmp = power(x, i);
    tmp *= sign;
    sign *= -1;
    tmp /= i;
    s += tmp;
  end
  s
end
soal_39();

function soal_40()
  N = input("Enter the number of iterations: ");
  x = input("Enter the x: ");
  s = x;
  for i = 2:N
    tmp = power(x, i);
    tmp /= factorial(i);
    s += tmp;
  end
  s
end
soal_40();

function soal_41()
  N = input("Enter the number of iterations: ");
  x = input("Enter the x: ");
  s = x;
  sign = -1;
  for i = 3:2:N
    tmp = power(x, i);
    tmp *= sign;
    sign *= -1;
    tmp /= i;
    s += tmp;
  end
  s
end
soal_41();

function soal_42()
  N = input("Enter the number of iterations: ");
  x = input("Enter the x: ");
  s = x;
  sign = -1;
  for i = 2:N
    tmp = power(x, i);
    tmp *= sign;
    sign *= -1;
    tmp /= i;
    s += tmp;
  end
  s
end
soal_42();
