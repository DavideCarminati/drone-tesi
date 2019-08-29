%% Initialization script
clear
% Setting the text interpreter in plots as latex...
set(groot,'defaulttextinterpreter','latex');  
set(groot, 'defaultAxesTickLabelInterpreter','latex');  
set(groot, 'defaultLegendInterpreter','latex');

dtn_params.m                % initializing the plant...
EKF2_init.m                 % initializing the filter...
INS_init.m                  % initializing the onboard sensors...

open trajPlann_init.m
open simPlots.m


