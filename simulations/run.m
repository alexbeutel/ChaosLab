global C1 C2 R1 L1 f E0 nu

 C1 = 0.1 * 10^-6;
 C2 = 400.0 * 10^-12;
 R1 = 60.0;
 L1 = 100.0 * 10^-6;
 f = 700000.0;
 E0 = 0.1;
 nuinit = 0.1;

 nuinc = 0.01;
 numax = 0.7;
 nu = nuinit;
% [T,Y] = ode45(@ode1,[1.2*10^-4,2.0*10^-4],[0,0]);


%ignore first few loops
% plot(Y(200:length(Y(:,1)),1),Y(200:length(Y(:,2)),2))
% plot(nu * sin(2*pi*f*T(200:length(T))),Y(200:length(Y(:,2)),2)*R1)
for j=1:((numax-nuinit)/nuinc)
    [T,Y] = ode45(@ode1,[10^-4,100.0*10^-4],[0,0]);
    plot(nu * sin(2*pi*f*T(200:600)),Y(200:600,2)*R1)
    ti = sprintf('Nu=%6.3f', nu);
    fi = sprintf('plots2/plot.nu.%6.3f.png', nu);
    title(ti)
    print('-dpng', fi)
    nu = nu + nuinc;
end
% plot(nu * sin(2*pi*f*T(:)),Y(:,2)*R1)