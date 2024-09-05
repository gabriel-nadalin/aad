counter = 0;
total = str2num(argv(){1});

for i = 0:total
    x = rand();
    y = rand();
    if (x * x + y * y <= 1)
        counter = counter + 1;
    endif
endfor

pi = counter / total * 4;
disp(pi);