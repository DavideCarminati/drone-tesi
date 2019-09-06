%% Trajectory planner initializer

% % square:
% wpt = [ 0,0,0; 0,0,-3; 0,-15,-3; 15,0,-3; 0,15,-3; -15,0,-3; 0,-15,-3; 0,-15,-3 ];
% head = zeros(8,1);
% noPoints = 500;
% [pos_ref,vel_ref,att_eul_ref] = trajplann2(wpt,head,noPoints);

% Or alternatively just recal the script:
% TrajPlann

wpt = [ 0,0,0; 0,0,-3; 5,0,-3; 5,-5,-3; 0,0,0 ];
ToA = [ 0, 5, 10, 15, 25 ];
[ pos_ref, vel_ref, t_ref ] = trajplann3(wpt,ToA);
figure
plot(t_ref,pos_ref(:,1), t_ref,pos_ref(:,2), t_ref,pos_ref(:,3));
grid on
legend('x','y','z')
figure
plot(t_ref,vel_ref(:,1), t_ref,vel_ref(:,2), t_ref,vel_ref(:,3));
grid on
legend('$u_{NED}$','$v_{NED}$','$w_{NED}$');
