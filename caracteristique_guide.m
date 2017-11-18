% Number of modes
m = 2 * Calcul_nombremodes(d, l);

% Effective index for modes
%% TE mode
neTE = Calcul_indexTE(m, l, d, n1, n2, n3)

%% TM mode
neTM = Calcul_indexTM(m, l, d, n1, n2, n3)

% Constraining
%% TE mode
GTE = Calcul_confinementTE(g, d, V)

%% TM mode
GTM = Calcul_confinementTM(g, d, V)