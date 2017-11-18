function [ab] = Abaque_TE(a, m)
%Abaque_TE Calcule la valeur de l'indice normalisée sur la plage demandée
%   Detailed explanation goes here

[x, y] = meshgrid(linspace(0, 15, 200), linspace(0, 1, 200));
TE = 2 * x .* sqrt(1-y) - m .* pi - atan(sqrt(y./(1 - y))) - atan(sqrt((a + y)./(1 - y)));
ab = contour(x, y, TE, [0, 0]);

end

