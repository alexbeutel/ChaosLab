function dy = ode1(t,y)

global C1 C2 R1 L1 f E0 nu

%  C1 = 0.1 * 10^-6;
%  C2 = 400.0 * 10^-12;
%  R1 = 60.0;
%  L1 = 100.0 * 10^-6;
%  f = 700000.0;
%  E0 = 0.1;
%  nu = 0.05005;

% C1 = 0.1 * 10^-6;
% C2 = 400.0 * 10^-11;
% R1 = 100.0;
% L1 = 0.03;
% f = 8500;
% E0 = 0.2;
% nu = 10;


dy = zeros(2,1);
dy(1) = y(2);
dy(2) = (-R1*y(2)-( (C2-C1)/(2*C2*C1)*abs(y(1))+ (C1+C2)/(2*C1*C2)*y(1)+E0) + nu * sin(2*pi*f*t))/L1;
