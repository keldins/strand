% find alphas (from TGS), timestamps, and temperatures, so as to plot time and
% temperature evolution of alpha (the thermal diffusivity)

% BGU_Th-22-7-16-APT_high_Th-04.80um-post_anneal_00-FIX-10.txt
% for pre-anneal, five pos, five neg, five fix

% for post-anneal, there's 00 and 01
% for post-anneal 01, there's five pos, neg and fix
% for post-anneal 00, there's 1-90 pos, neg, and fix

% For ease of reference:
% TGS_phase_analysis() outputs the following
% [freq_final,freq_error,speed,diffusivity,diffusivity_err,tau]

grating = 4.818417202723469; % from calibration

% load the temperature data, which was processed from temp_rec_04.csv
% and saved into the easily accessible MATLAB format
load('./kns_temp_rec_04.mat');
% This provides column vectors T_timestamp and T_out

% pre-anneal
alphas.pre_anneal   = zeros(5,1);
times.pre_anneal    = zeros(5,1);
Ts.pre_anneal       = zeros(5,1);
for ii = 1:5
    sii = num2str(ii);
    posfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'pre_anneal_00-POS-', sii, '.txt');

    negfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'pre_anneal_00-NEG-', sii, '.txt');

    fixfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'pre_anneal_00-FIX-', sii, '.txt');

    % pos, neg, and fix will all give the same time stamp
    times.pre_anneal(ii,1) = kns_get_timestamp_from_TGS_datafile(posfile);

    Ts.pre_anneal(ii,1) ...
    = kns_find_T_from_time(   T_timestamp, T_out, times.pre_anneal(ii,1)  );

    [freq_final,freq_error,speed,diffusivity,diffusivity_err,tau] ... 
    = TGS_phase_analysis(posfile, negfile, grating, 2);

   alphas.pre_anneal(ii,1) = diffusivity; 
end



% post-anneal 01
alphas.post_anneal01    = zeros(5, 1);
times.post_anneal01     = zeros(5,1);
Ts.post_anneal01        = zeros(5,1);
for ii = 1:5
    sii = num2str(ii);
    posfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'post_anneal_01-POS-', sii, '.txt');

    negfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'post_anneal_01-NEG-', sii, '.txt');

    fixfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'post_anneal_01-FIX-', sii, '.txt');

    % pos, neg, and fix will all give the same time stamp
    times.post_anneal01(ii,1) = kns_get_timestamp_from_TGS_datafile(posfile);

    Ts.post_anneal01(ii,1) ...
    = kns_find_T_from_time(   T_timestamp, T_out, times.post_anneal01(ii,1)  );

    [freq_final,freq_error,speed,diffusivity,diffusivity_err,tau] ... 
    = TGS_phase_analysis(posfile, negfile, grating, 2);

   alphas.post_anneal01(ii,1) = diffusivity; 
end



% post-anneal 00
alphas.post_anneal00    = zeros(90,1);
times.post_anneal00     = zeros(90,1);
Ts.post_anneal00        = zeros(90,1);
for ii = 1:90
    sii = num2str(ii);
    posfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'post_anneal_00-POS-', sii, '.txt');

    negfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'post_anneal_00-NEG-', sii, '.txt');

    fixfile = strcat('BGU_Th-22-7-16-APT_high_Th-04.80um-', ...
    'post_anneal_00-FIX-', sii, '.txt');

    % pos, neg, and fix will all give the same time stamp
    times.post_anneal00(ii,1) = kns_get_timestamp_from_TGS_datafile(posfile);

    Ts.post_anneal00(ii,1) ...
    = kns_find_T_from_time(   T_timestamp, T_out, times.post_anneal00(ii,1)  );

    [freq_final,freq_error,speed,diffusivity,diffusivity_err,tau] ... 
    = TGS_phase_analysis(posfile, negfile, grating, 2);

   alphas.post_anneal00(ii,1) = diffusivity; 
end

%SAW_c_tungsten = 2665.9; % This is the value that Prof. Short used in his demo
% But, I have similar (but not identical values for which I have citations)

%wavelengths = SAW_c_tungsten ./ (freqs .* 1e-6)

save("./variable_dump.mat");
