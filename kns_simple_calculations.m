% All simple calculations for the paper will go here for ease
% of review and repetition. These will include things like unit 
% conversions and density calculations.

% Given and units:
J_to_eV =    6.2415091e18;
q_e = 1.6022e-19; % coloumbs, charge of an electron
N_A =  6.022140857e23; % atoms/mol

ppm_Th = .15;
ppb_Th = ppm_Th*1e3;
Th_replaces_Pb_only = true;
if(Th_replaces_Pb_only)
  ppb_Pb = .5e9 - ppb_Th;
  ppb_S = .5e9;
else
  ppb_Pb = (1e9-ppb_Th)/2;
  ppb_S = ppb_Pb;
end


rho_PbS = 7.60; % g/cm^3
rho_Pb = 11.34; % g/cm^3
rho_S = 2.07;
rho_Th = 11.74;

atomwt_Pb = 207.2; % g/mol
atomwt_S = 32.066;
atomwt_Th = 232.038;

heat_formation_PbS = .4169e3; % J/g

% Geometry of sample
x1 = 1.5; %cm
x2 = 1; % cm
thickness = 500e-7 % 500 nm = 500e-7 cm




%%%% Begin calculations
atomwt_PbS = atomwt_Pb + atomwt_S;
atomwt_PbSTh = 2*(ppb_Pb*atomwt_Pb + ppb_S*atomwt_S + ppb_Th*atomwt_Th)/1e9;

surface_binding_energy = ...
heat_formation_PbS * J_to_eV * atomwt_PbS / N_A / 2; % eV per atom

V_tot = x1*x2*thickness; % cm^3

























N_S = V_tot*N_A / (atomwt_Pb/rho_Pb + atomwt_S/rho_S);
n_S = V_tot     / (atomwt_Pb/rho_Pb + atomwt_S/rho_S);

N_Pb = N_S; % rock salt stoichiometry
n_Pb = n_S;


m_S = atomwt_S * n_S;
m_Pb = atomwt_Pb * n_Pb;
m_tot = m_Pb + m_S
m_Th = m_tot*150/1e9;



n_Th = m_Th/atomwt_Th;
N_Th = N_A*n_Th;



t_half = 1.9125 * 365 * 24 * 3600; % from yrs to seconds
lambda_Th = log(2)/t_half; % decay const


Act_Th = lambda_Th*N_Th
