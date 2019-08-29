%% Plots script
%% N-E plot
figure
plot(realPos.Data(:,1),realPos.Data(:,2));
grid on
hold on
for ii = 1:size(pos_ref,1) % Plotting only 1 value of tot...
    if mod(ii,20) == 0
        plot(pos_ref(ii,1),pos_ref(ii,2),'ro')
    end
end
legend('Actual trajectory','Reference')
xlabel('East');
ylabel('Nord');

%% 3D plot NED
figure
hold on
for ii = 1:size(wpt,1)
    plot3(wpt(ii,1),wpt(ii,2),wpt(ii,3),'o','MarkerFaceColor','c');
end
grid on
plot3(realPos.Data(:,1),realPos.Data(:,2),realPos.Data(:,3))
legend('Reference','Actual trajectory')
xlabel('East');
ylabel('Nord');
zlabel('Down');
title('North-East-Down plot');

%% 3D plot xyz
figure
hold on
plot3(realPos.Data(:,1),-realPos.Data(:,2),-realPos.Data(:,3))
for ii = 1:size(wpt,1)
    plot3(wpt(ii,1),-wpt(ii,2),-wpt(ii,3),'ro','MarkerFaceColor','r');
end
grid on
% for jj = 1:size(realPos.Data,1)
%     vectComp(jj,:) = [ sign(realPos.Data(jj,1)), sign(-realPos.Data(jj,2)), ...
%         sign(-realPos.Data(jj,3)) ];
% end
% quiver3(realPos.Data(:,1),-realPos.Data(:,2),-realPos.Data(:,3),...
%     vectComp(:,1),vectComp(:,2),vectComp(:,3));
legend('Actual trajectory','Waypoints')
xlabel('$x [m]$');
ylabel('$y [m]$');
zlabel('$z [m]$');
title('North-East-Down plot');
view([45,30]);
