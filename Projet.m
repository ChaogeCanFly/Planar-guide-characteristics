for m = 0:1:2
    for a = [0 10 100 1000]
        % TE - mode
        [x,y] = meshgrid(linspace(0,15,200),linspace(0,1,200));
        TE = x.*sqrt(1-y)-m.*pi-atan(sqrt(y./(1-y)))-atan(sqrt((a+y)./(1-y)));
        f1 = contour(x,y,TE, [0,0]);
        hold on
    end
end
hold off
grid on;

figure;
for m = 0:1:2
    for a = [0 10 100 1000]
        % TM - mode
        [x,y] = meshgrid(linspace(0,15,200),linspace(0,1,200));
        %TM = @(x,y) x*sqrt(1-y)-m*pi-atan(sqrt(y/(1-y)))-atan(sqrt((a+y)/(1-y)));
        f1 = contour(x,y,TM, [0,0]);
        hold on
    end
end
hold off
grid on;