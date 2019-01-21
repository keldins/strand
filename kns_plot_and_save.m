
% plot data and save so that files can be transferred from cluster to local
% machine and then viewed

%load("./kns_variable_dump.mat");

plot(times.post_anneal00, Ts.post_anneal00);
title("Temperature change over time after annealing sample");
xlabel("Time (s)");
ylabel("Temperature (C)");
print("-dpdflatex", "~/strand/plots/T_over_time_post_anneal00");
print("-dpsc", "~/strand/plots/T_over_time_post_anneal00");
print("-depsc", "~/strand/plots/T_over_time_post_anneal00");
print("-dsvg", "~/strand/plots/T_over_time_post_anneal00");
print("-dpdf", "~/strand/plots/T_over_time_post_anneal00");
print("-dpng", "~/strand/plots/T_over_time_post_anneal00");



plot(Ts.post_anneal00, alphas.post_anneal00, "*");
title("Thermal diffusivity as a function of temperature after annealing sample");
xlabel("Temperature (C)");
ylabel("Thermal diffusivity");
print("-dpdflatex", "~/strand/plots/alpha_vs_T_post_anneal00");
print("-dpsc", "~/strand/plots/alpha_vs_T_post_anneal00");
print("-depsc", "~/strand/plots/alpha_vs_T_post_anneal00");
print("-dsvg", "~/strand/plots/alpha_vs_T_post_anneal00");
print("-dpdf", "~/strand/plots/alpha_vs_T_post_anneal00");
print("-dpng", "~/strand/plots/alpha_vs_T_post_anneal00");



plot(times.post_anneal00, alphas.post_anneal00, "*"); 
title("Thermal diffusivity as a function of time after annealing sample");
xlabel("Time (s)");
ylabel("Thermal diffusivity");
print("-dpdflatex", "~/strand/plots/alpha_vs_time_post_anneal00");
print("-dpsc", "~/strand/plots/alpha_vs_time_post_anneal00");
print("-depsc", "~/strand/plots/alpha_vs_time_post_anneal00");
print("-dsvg", "~/strand/plots/alpha_vs_time_post_anneal00");
print("-dpdf", "~/strand/plots/alpha_vs_time_post_anneal00");
print("-dpng", "~/strand/plots/alpha_vs_time_post_anneal00");


all_times = [times.pre_anneal; times.post_anneal00; times.post_anneal01];
all_Ts = [Ts.pre_anneal; Ts.post_anneal00; Ts.post_anneal01];
all_alphas = [alphas.pre_anneal; alphas.post_anneal00; alphas.post_anneal01];

plot(all_times, all_alphas, "*");
title("Thermal diffusivity over time for entire experiment");
xlabel("Time (s)");
ylabel("Thermal diffusivity");
print("-dpdflatex", "~/strand/plots/alphas_vs_time_all_seconds");
print("-dpsc", "~/strand/plots/alphas_vs_time_all_seconds");
print("-depsc", "~/strand/plots/alphas_vs_time_all_seconds");
print("-dsvg", "~/strand/plots/alphas_vs_time_all_seconds");
print("-dpdf", "~/strand/plots/alphas_vs_time_all_seconds");
print("-dpng", "~/strand/plots/alphas_vs_time_all_seconds");



plot(all_times/3600, all_alphas, "*");
title("Thermal diffusivity over time for entire experiment");
xlabel("Time (hrs)");
ylabel("Thermal diffusivity");
print("-dpdflatex", "~/strand/plots/alphas_vs_time_all_hours");
print("-dpsc", "~/strand/plots/alphas_vs_time_all_hours");
print("-depsc", "~/strand/plots/alphas_vs_time_all_seconds");
print("-dpdf", "~/strand/plots/alphas_vs_time_all_seconds");
print("-dsvg", "~/strand/plots/alphas_vs_time_all_seconds");
print("-dpng", "~/strand/plots/alphas_vs_time_all_seconds");


plot(all_times, all_Ts, "--");
title("Temperature of sample for duration of experiment");
xlabel("Time (s)");
ylabel("Temperature (C)");
print("-dpdflatex", "~/strand/plots/Ts_vs_time_all_seconds");
print("-dpsc", "~/strand/plots/Ts_vs_time_all_seconds");
print("-depsc", "~/strand/plots/Ts_vs_time_all_seconds");
print("-dpdf", "~/strand/plots/Ts_vs_time_all_seconds");
print("-dsvg", "~/strand/plots/Ts_vs_time_all_seconds");
print("-dpng", "~/strand/plots/Ts_vs_time_all_seconds");



plot(all_times/3600, all_Ts, "--");
title("Temperature of sample for duration of experiment");
xlabel("Time (hrs)");
ylabel("Temperature (C)");
print("-dpdflatex", "~/strand/plots/Ts_vs_time_all_hours");
print("-dpsc", "~/strand/plots/Ts_vs_time_all_hours");
print("-depsc", "~/strand/plots/Ts_vs_time_all_hours");
print("-dpdf", "~/strand/plots/Ts_vs_time_all_hours");
print("-dpng", "~/strand/plots/Ts_vs_time_all_hours");
print("-dsvg", "~/strand/plots/Ts_vs_time_all_hours");



plot(all_Ts, all_alphas, "*");
title("Thermal diffusivity as a function of temperature for the entire experiment");
xlabel("Temperature (C)");
ylabel("Thermal diffusivity");
print("-dpdflatex", "~/strand/plots/alphas_vs_Ts_all");
print("-dpsc", "~/strand/plots/alphas_vs_Ts_all");
print("-depsc", "~/strand/plots/alphas_vs_Ts_all");
print("-dpdf", "~/strand/plots/alphas_vs_Ts_all");
print("-dpng", "~/strand/plots/alphas_vs_Ts_all");
print("-dsvg", "~/strand/plots/alphas_vs_Ts_all");

%
%title("");
%xlabel("");
%ylabel("");
%print("-dpdflatex", "~/strand/plots/");
%print("-dpsc", "~/strand/plots/");


