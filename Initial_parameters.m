close all
clear all
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Loading the traffic scenario data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data1.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data2.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data3.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data4.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data5.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data6.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data7.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data8.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data9.mat')
% load('DATA/Traffic_Data/ECOSM2021_benchmark_problem_data10.mat')

% Defining the unit conversion
ras2rpm = 60/2/pi; % [rad/s -> rpm]
mps2kmh = 3600/1000; % [m/s -> km/h]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Total fuel calculation that electricity cost is transformed to fuel
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gamma = 25; % The equivalent factor

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameters in the block of Index Performance
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
spd_lim = 60; % maximum speed limitation on the road in Japan[km/h]
hw_min = 3; % minimum headway distance [m]
driv_rect_time = 0.5; % driver reflect time [s]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Setting the initial parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Initial_SOC = 50;          % Initial SOC[%]
Initial_headway = Sensor_FOL_dDist(2); % Initial distance headway [m]
Initial_eng_spd = 0; % Initial engine speed [rpm]
Initial_vhcl_spd = 0; % Initial ego vehicle speed [m/s]

simTs = 0.01;              % Sampling time [sec]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% !!!!!!!!!!!!!!!Setting the terminal simulation time!!!!!!!!!!!!!!!!!!!!!!
t_end = 1180;                 % Simulation time setting [sec], please set it
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('DATA/Route_slope_parameters.mat') % load the slope information for simulink
