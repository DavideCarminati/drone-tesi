%% Extended Kalman Filter initialization script

V1 = eye(12)*1e-6;
V2 = diag([ acc_var*ones(3,1); gyr_var*ones(3,1); ...
    0.01; 0.01^2*ones(3,1); (pi/180)*ones(3,1) ]);