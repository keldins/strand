
% plot data and save so that files can be transferred from cluster to local
% machine and then viewed

load("./kns_variable_dump.mat");

plot(times.post_anneal00, Ts.post_anneal00);
title("Post anneal 00 temperatures vs time");
xlabel("Time (s)");
ylabel("Temperature (C)");
print("-deps", "~/strand/plots/T_over_time_post_anneal00.eps");
