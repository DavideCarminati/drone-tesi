%% Script for plant dynamics
clear
%% Data from SolidWorks model 

% global m g Kt Kq l <-- SOLVE GLOBAL VARIABLE ISSUE!!
m = 1.5;
g = 9.81;
Kt = 1.4092e-5;
Kq = 3.9462e-07;
l = 0.20;
% Inertia moment
Jx = 0.0170;
Jz = 0.0308;
Jy = 0.0173;
Jxz = 0;
Gamma = Jx*Jz - Jxz^2;
c1 = 1/Gamma*((Jy - Jz)*Jz - Jxz^2);
c2 = 1/Gamma*((Jx - Jy + Jz)*Jxz);
c3 = Jz/Gamma;
c4 = Jxz/Gamma;
c5 = (Jz - Jx)/Jy;
c6 = Jxz/Jy;
c7 = 1/Jy;
c8 = 1/Gamma*((Jx - Jy)*Jx + Jxz^2);
c9 = Jx/Gamma;
C = [c1; c2; c3; c4; c5; c6; c7; c8; c9];