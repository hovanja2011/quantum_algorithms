function z = check_diff(x,y)
%учет малых погрешностей системы

z = (abs(x-y)<0.0000000001);
