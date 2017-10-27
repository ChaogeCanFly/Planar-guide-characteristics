for m = 0:1:2
    for a = [0 10 100 1000]
        % TE - mode
        TE = @(x,y) x*sqrt(1-y)-m*pi-atan(sqrt(y/(1-y)))-atan(sqrt((a+y)/(1-y)));
        f1 = contourc(TE(0:15,0:1), [0 15 0 1], 'MeshDensity',200);
        TM = @(x,y) x*sqrt(1-y)-m*pi-atan(sqrt(y/(1-y)))-atan(sqrt((a+y)/(1-y)));
        f2 = contourc(TM, [0 15 0 1], 'MeshDensity',200);
        hold on
    end
end
hold off
grid on;