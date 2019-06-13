%% Sliding Mode Controller (SMC) main script

Ts = 0.001;
%% Pitch channel

Ap = [ 0, 1; 0, 0 ]; Bp = [ 0; 1/Jy ]; Cp = eye(2);
ctSys = ss(Ap,Bp,Cp,0);
dtSys = c2d(ctSys,Ts);
[ Adt, Bdt, Cdt, Ddt ] = ssdata(dtSys);

% Sliding surface in DT: s(k) = c'*x_tilde = 0
% x_tilde = [ th_ref(k) - th(k); q_ref(k) - q(k) ]
c = [ 1e-6; 1 ];
% -----------------------------CONTROL LAW---------------------------------
% u(k) = -inv(c'*Bdt)*(c'*Adt)*x_tilde(k)

