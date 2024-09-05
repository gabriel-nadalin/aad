total = str2num(argv(){1});

pi = 0;
for i = 0:total
    pi += power((-1), i) / ( 2 * i + 1);
endfor
pi = pi * 4;

disp(pi);