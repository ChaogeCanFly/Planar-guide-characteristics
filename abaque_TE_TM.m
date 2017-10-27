% TE - mode
for m = 0:1:2
    for a = [0 10 100 1000]
        [x,y] = meshgrid(linspace(0,15,200),linspace(0,1,200));
        TE = 2*x.*sqrt(1-y)-m.*pi-atan(sqrt(y./(1-y)))-atan(sqrt((a+y)./(1-y)));
        f1 = contour(x,y,TE, [0,0]);
        hold on
    end
end
hold off
grid on;

figure;
% Parameters for the TM mode
nc = 1.45; % Index for the core
ns = 1; % Intex for the substrate
for m = 0:1:2
    for a = [0 10 100 1000]
        % TM - mode
        [x,y] = meshgrid(linspace(0,15,200),linspace(0,1,200));
        TM = 2*x*sqrt(1-y)-m*pi-atan(sqrt(y/(1-y)))-atan(sqrt((a+y)/(1-y)));
        f1 = contour(x,y,TM, [0,0]);
        hold on
    end
end
hold off
grid on;