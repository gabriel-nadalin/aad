# Prevent Octave from thinking that this
# is a function file:

1;

function ret = leibniz (n)
    ret = 0;
    for i = 0:n
        ret += power((-1), i) / ( 2 * i + 1);
    endfor
    ret = ret * 4;
endfunction

disp(leibniz(1000000));