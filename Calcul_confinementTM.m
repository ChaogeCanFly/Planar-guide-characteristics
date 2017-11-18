function [G] = Calcul_confinementTM(g, q, d, V)
%Calcul_confinementTM Formule de calcul du confinement dans le cas du guide
% plan
%   Detailed explanation goes here

format long;
G = (g * d / V^2) * ((q * V^2 + 2 * g * d) / (q * g * d + 2));

end

