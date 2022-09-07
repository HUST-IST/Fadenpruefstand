%% Motor-Parameter
P = 6; % Number of poles
J = 8e-6; % Rotor moment of inertia with brake [kg.m^2]
lambda_r = 0.0499006; % [Wb] or [V.s]
R = 7.5; % Winding resistance Phase-Phase R20 is 15[Ohm] -> Stator phase resistance Rs is 7.5[Ohm]
L = 0.00525; % Winding inductance Phase-Phase, measured at 1kHz is 0.0105[H] -> Armature inductance is 0.00535[H]

%% Servoverstäker-Parameter
T_strom = 6.2e-5; % Current control cycle time 62[us] -> 6.2e-5[s]
T_ges = 1.25e-4; % Velocity control cycle time 125[us] -> 1.25e-4[s]
T_ges_filter = 1.5e-4; % Velocity filter low pass time constant 0.15[ms] -> 1.5e-4[s]
T_pos = 2.5e-4; % Position control cycle time

Tn_Stromkreis = 0.0007; % integral time constant 0.7[ms] -> 0.0007[s]
Kp_series_Stromkreis = 31.5; % [V/A]
Ki_series_Stromkreis = 1/Tn_Stromkreis;
Tn_Geskreis = 0.008; % integral time constant 8[ms] -> 0.008[s]
Kp_series_Geskreis = 0.017; % [A/(rad/s)]
Ki_series_Geskreis = 1/Tn_Geskreis; 
Kp_Poskreis = 5; % [1000/min]

%% Faden Parameter

d = 0.707;% Dämpfungsfaktor
k = 0.2;% Elastizitätsfaktor

%% ADRC-Parameter

% Die folgenden Parameter sind wie PID-Regler und müssen ausprobiert werden
b0 = 0.1; 
beta01 = 3000;
beta02 = 100;
beta03 = 0.01;
open('simulation_version2021b.slx');
%%sim('simulation_version2021b.slx');
