function [ab] = Abaque_TM(a, m, nc, ns, nsp)
%Abaque_TM Summary of this function goes here
%   Detailed explanation goes here

[x, y] = meshgrid(linspace(0, 15, 200), linspace(0, 1, 200));
TM = 2 * x * sqrt(1-y) - m * pi - atan((nc^2 / ns^2)*(sqrt(y/(1 - y)))) - atan((nc^2 / nsp^2)*sqrt((a + y)/(1 - y)));
ab = contour(x, y, TM, [0, 0]);

end

