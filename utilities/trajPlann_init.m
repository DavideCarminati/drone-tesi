%% Trajectory planner initializer

wpt = [ 0,0,0; 0,0,-3; 0,-15,-3; 15,0,-3; 0,15,-3; -15,0,-3; 0,-15,-3; 0,-15,-3 ];
head = zeros(8,1);
noPoints = 500;
[pos_ref,vel_ref,att_eul_ref] = trajplann2(wpt,head,noPoints);

% Or alternatively just recal the script:
% TrajPlann.m