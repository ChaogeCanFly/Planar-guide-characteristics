function [g] = Calcul_gamma(k, b, n)
%Calcul_gamma Summary of this function goes here
%   k, le nombre d'onde
%   b, la constante de propagation du mode considéré
%   n, l'indice dans la zone considérée

if b^2 < k^2 * n^2
    % Cas imaginaire
    g = sqrt(k^2*n^2-b^2);
else
    % Cas réel
    g = sqrt(b^2-k^2*n^2);
end

end

