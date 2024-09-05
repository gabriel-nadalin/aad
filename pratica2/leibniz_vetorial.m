total = str2num(argv(){1});

i = 0:total;

array = (-1).^i ./ (2 .* i + 1);

pi = sum(array) * 4;

disp(pi);