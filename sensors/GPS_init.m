% GPS initialization file (in realtà dell'otus!)
% Simulation based on ublox NEO-7N-0-002 sensor (GPS antenna for Pixhawk)
%
% -------------------------------------------------------------------------
%
% Ts              = 1e-3;       % Simulation time step 
realSensorGPS   = 1;          % Set this flag to 1 for real sensor simulation
                              % Bias, noise, scale factor, misalignment 
indoorGPS       = 1;          % Set this flag to 1 for NED position data; 
                              % Set this flag to 0 for latitude/longitude
                              % data
%--------------------------------------------------------------------------
%%%                                  GPS                              %%%%
%--------------------------------------------------------------------------
%
% GPS frequency
gps_freq = 10;                      % Hz                       
%
% GPS bias
bgps = [2;2;0.5];                   % bias
%
% GPS noise
seed_gpsx = abs(randi(1e4));        % seed x axis
seed_gpsy = abs(randi(1e4));        % seed y axis
seed_gpsz = abs(randi(1e4));        % seed z axis    
gps_var = [0.001;0.001;0.001];      % variance 
%