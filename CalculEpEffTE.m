function [dE] = CalculEpEffTE(d, g2, g3)
%CalculEpEff Formule de calcul de l'épaisseur effective du guide (TE) dans le cas du guide
% plan
% d est la dimension du guide dans la direction considérée
% g2, la constante de décroissance dans la première zone (arbitraire)
% g3, la constante de décroissance dans la deuxième zone (arbitraire)
format long;
dE = d + 1 / g2 + 1 / g3;

end

