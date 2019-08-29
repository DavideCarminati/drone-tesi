%--------------------------------------------------------------------------
% Author: Matteo Scanavino (matteo.scanavino@polito.it)
% Affiliation: Politecnico di Torino - Department of Mechanical and
% Aerospace Engineering (DIMEAS)
% Year: 2019
% -------------------------------------------------------------------------
%
% Barometer initialization file 
% Simulation based on MEAS MS5611-01BA03 sensor (internal Pixhawk 1 baro)
%
% -------------------------------------------------------------------------
%
% Ts              = 1e-3;       % Simulation time step 
realSensorBaro  = 1;          % Set this flag to 1 for real sensor simulation
                              % Bias, noise, scale factor, misalignment 
%--------------------------------------------------------------------------
%%%                             BAROMETER                              %%%%
%--------------------------------------------------------------------------
%
% Magnetometer frequency
baro_freq = 100;                    % Hz
%
% Barometer scale factor
Sb = 1;                         
%
% Barometer bias
bb = 0; 
%
% Barometer noise
seed_b = abs(randi(1e4));
bar_var = 10;                       % variance 
%
% Barometer full scale
baro_fullscale = 4800e3;             % [Pa]
%
%
p0 = 101325;
R_air = 286.9;
T0 = 288.15;
kb = 1;
