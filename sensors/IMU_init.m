%--------------------------------------------------------------------------
% Author: Matteo Scanavino (matteo.scanavino@polito.it)
% Affiliation: Politecnico di Torino - Department of Mechanical and
% Aerospace Engineering (DIMEAS)
% Year: 2019
% -------------------------------------------------------------------------
% 
% Inertial Measurement Unit initialization file
% Simulation based on MPU9250 (internal Pixhawk 1 IMU)
%
Ts         = 4e-3;          % Simulation time step 
realSensorIMU = 1;          % Set this flag to 1 for real sensor simulation
                            % Bias, noise, scale factor, misalignment 
%
%--------------------------------------------------------------------------
%%%                         ACCELEROMETER                              %%%%
%--------------------------------------------------------------------------
% Magnetometer frequency
accel_freq = 1000;                  % Hz

% Gravity field ned frame
g          = 9.81; 
gavity_ned = [0; 0; g];       % [m/s^2]
%
% Accelerometer misalignment factor
Maxy = 0;                           % x-y body axis
Maxz = 0;                           % x-z body axis
Mayx = Maxy;                        % y-x body axis
Mayz = 0;                           % y-z body axis
Mazx = Maxz;                        % z-x body axis
Mazy = Mayz;                        % z-y body axis
Ma = [1     Maxy     Maxz;          % Misalignment matrix
      Mayx   1       Mayz;
      Mazx   Mazy     1]; 
%
% Accelerometer scale factor
Sax = 1;                            % x axis
Say = 1;                            % y axis
Saz = 1;                            % z axis
Sa = diag([Sax;Say; Saz]);          % Scale factor matrix
%
% Accelerometer bias
bax = 0;                            % x axis
bay = 0;                            % y axis 
baz = 0;                            % z axis
ba  = [bax; bay; baz];              % bias vector
%
% Accelerometer noise
seed_ax = abs(randi(1e4));          % seed x axis
seed_ay = abs(randi(1e4));          % seed y axis
seed_az = abs(randi(1e4));          % seed z axis
acc_var = 0.01;                     % variance (all axis) 
%
% Accelerometer full scale
accel_fullscale = 4*g;              % [m/s^2]
%
%-------------------------------------- ------------------------------------
%%%                             GYROSCOPE                              %%%%
%--------------------------------------------------------------------------
% Gyroscope frequency
gyro_freq = 1000;                   % Hz

% Gyroscope misalignment factor
Mgxy = 0;                           % x-y body axis
Mgxz = 0;                           % x-z body axis
Mgyx = Mgxy;                        % y-x body axis
Mgyz = 0;                           % y-z body axis
Mgzx = Mgxz;                        % z-x body axis
Mgzy = Mgyz;                        % z-y body axis
Mg = [1     Mgxy     Mgxz;          % Misalignment matrix
      Mgyx   1       Mgyz;  
      Mgzx   Mgzy     1]; 
%
% Gyroscope scale factor
Sgx = 1;                            % x axis
Sgy = 1;                            % y axis
Sgz = 1;                            % z axis
Sg = diag([Sgx;Sgy; Sgz]);          % Scale factor matrix
%
% Gyroscope bias
bgx = 0;                            % x axis
bgy = 0;                            % y axis
bgz = 0;                            % z axis
bg  = [bgx; bgy; bgz];              % bias vector
%
% Gyroscope noise
seed_gx = abs(randi(1e4));          % seed x axis
seed_gy = abs(randi(1e4));          % seed y axis
seed_gz = abs(randi(1e4));          % seed z axis
gyr_var = 0.01;                     % variance (all axis)
%
% Gyroscope full scale
gyro_fullscale = 500*pi/180;        % [rad/s]
%
%--------------------------------------------------------------------------
%%%                             MAGNETOMETER                           %%%%
%--------------------------------------------------------------------------
% Magnetometer frequency
mag_freq = 1000;                    % Hz
%
% Magnetometer field ned frame
mag_ned = [22854.5;971.8;41394.7];  % [nT] - Torino magnetic field 
%                                     https://www.ngdc.noaa.gov/geomag
%
% Magnetometer misalignment factor
Mmxy = 0;                           % x-y body axis
Mmxz = 0;                           % x-z body axis    
Mmyx = Mgxy;                        % y-x body axis
Mmyz = 0;                           % y-z body axis
Mmzx = Mgxz;                        % z-x body axis
Mmzy = Mgyz;                        % z-y body axis
Mm = [1     Mmxy     Mmxz;          % Misalignment matrix
      Mmyx   1       Mmyz;
      Mmzx   Mmzy     1]; 
%
% Magnetometer scale factor
Smx = 1;                            % x axis
Smy = 1;                            % y axis
Smz = 1;                            % z axis
Sm = diag([Smx;Smy; Smz]);          % Scale factor matrix
%
% Magnetometer bias
bmx = 0;                            % x axis
bmy = 0;                            % x axis
bmz = 0;                            % x axis    
bm  = [bmx; bmy; bmz];              % bias vector
%
% Magnetometer noise
seed_mx = abs(randi(1e4));          % seed x axis
seed_my = abs(randi(1e4));          % seed y axis
seed_mz = abs(randi(1e4));          % seed z axis    
mag_var = 0.01;                     % variance (all axis)
%
% Magnetometer full scale
mag_fullscale = 4800e3;             % [nT]

%% mio
Ma = eye(3);
Sa = eye(3);
Mo_pos = eye(3);
So_pos = eye(3);
Mo_pqr = eye(3);
So_pqr = eye(3);