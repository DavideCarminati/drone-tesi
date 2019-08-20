%--------------------------------------------------------------------------
% Author: Matteo Scanavino (matteo.scanavino@polito.it)
% Affiliation: Politecnico di Torino - Department of Mechanical and
% Aerospace Engineering (DIMEAS)
% Year: 2019
% -------------------------------------------------------------------------
%
% Inertial Navigation System INS initialization
%
% -------------------------------------------------------------------------
clear; close all; clc; 
%
% Launch initialization script
IMU_init; 
BARO_init; 
GPS_init; 
