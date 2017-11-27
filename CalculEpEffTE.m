function [dE] = CalculEpEffTE(d, g2, g3)
%CalculEpEff Formule de calcul de l'�paisseur effective du guide (TE) dans le cas du guide
% plan
% d est la dimension du guide dans la direction consid�r�e
% g2, la constante de d�croissance dans la premi�re zone (arbitraire)
% g3, la constante de d�croissance dans la deuxi�me zone (arbitraire)
format long;
dE = d + 1 / g2 + 1 / g3;

end

