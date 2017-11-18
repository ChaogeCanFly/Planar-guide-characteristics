function [neTM] = Calcul_TM(n1, n2, n3, m, l, d)
%Calcul_TE Summary of this function goes here
%   Detailed explanation goes here
format long
f = @(X)n1^2 - (l / 2 / pi / d)^2 ...
    * (m * pi + atan(n1^2*sqrt(X-n2^2)/n2^2/sqrt(n1^2-X)) ...
    + atan(n1^2*sqrt(X-n3^2)/n3^2/sqrt(n1^2-X)))^2 ...
    - X;
neTM = fzero(f, [n2^2, n1^2]);
neTM = sqrt(neTM);

end

