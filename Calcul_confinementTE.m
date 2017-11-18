function [G] = Calcul_confinementTE(g, d, V)
%Calcul_confinementTE Formule de calcul du confinement dans le cas du guide
% plan
%   Detailed explanation goes here

format long;
G = (g * d / V^2) * ((V^2 + 2 * g * d) / (g * d + 2));

end

