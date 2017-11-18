% Abaque TE-TM

%% TE - mode
figure;
for m = 0:1:2
    for a = [0, 10, 100, 1000]
        [x, y] = meshgrid(linspace(0, 15, 200), linspace(0, 1, 200));
        TE = 2 * x .* sqrt(1-y) - m .* pi - atan(sqrt(y./(1 - y))) - atan(sqrt((a + y)./(1 - y)));
        f1 = contour(x, y, TE, [0, 0]);
        hold on
    end
end
hold off
grid on;

%% TM - mode
%%% Parameters for the TM - mode
nc = 1.45; % Index for the core
ns = 1; % Intex for the substrate
nsp = 1; % Intex for the superstrat
figure;
for m = 0:1:2
    for a = [0, 10, 100, 1000]
        % TM - mode
        [x, y] = meshgrid(linspace(0, 15, 200), linspace(0, 1, 200));
        TM = 2 * x * sqrt(1-y) - m * pi - atan((nc^2 / ns^2)*(sqrt(y/(1 - y)))) - atan((nc^2 / nsp^2)*sqrt((a + y)/(1 - y)));
        f1 = contour(x, y, TM, [0, 0]);
        hold on
    end
end
hold off
grid on;

% Mode characteristics
caracteristique_guide;