

% Infinite slab with thickness D and range R
% Infinite means edges are neglected

D = 5000; % angstroms
R = 184000; % angstroms


% Solid angle of globe slice
steradians_of_slice_of_angles = @(_phi_n, _phi_s) 2*pi*(sin(_phi_n) + sin(_phi_s));

phi_n = @(_f) asin(_f*D/R);
phi_s = @(_f) phi_n(1-_f);

steradians_of_slice_of_f = @(_f) steradians_of_slice_of_angles(phi_n(_f), phi_s(_f));


% generate random location within thin film




% generate random trajectory



% find end point of trajectory - is it outside or inside?



% tabulate