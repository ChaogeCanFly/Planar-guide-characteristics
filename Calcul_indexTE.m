function [neTE] = Calcul_indexTE(m, l, d, n1, n2, n3)

format long;

V = 2 * pi / l * d * sqrt(n1^2-n2^2); % Fréquence normalisée
f = @(X) n1^2 - (l / 2 / pi / d)^2 * (m * pi + atan(sqrt(X-n2^2)/sqrt(n1^2-X)) + atan(sqrt(X-n3^2)/sqrt(n1^2-X)))^2 - X;
neTE = fzero(f, [n2^2, n1^2]);
neTE = sqrt(neTE)

end

