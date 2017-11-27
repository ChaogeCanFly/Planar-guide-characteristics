function [dM] = CalculEpEffTM(d, g2, q2, g3, q3)
%CalculEpEff Formule de calcul de l'�paisseur effective du guide (TE) dans le cas du guide
% plan
% d est la dimension du guide dans la direction consid�r�e
% g2, la constante de d�croissance dans la premi�re zone (arbitraire)
% g3, la constante de d�croissance dans la deuxi�me zone (arbitraire)
format long;
dM = d + 1 / (q2 * g2) + 1 / (q3 * g3);

end

