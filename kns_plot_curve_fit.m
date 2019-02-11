% speeds

load("./kns_evolution_data.mat");

s = 17; % judged subjectively by eye
d_alphas = all_alphas(s:end);
d_times = all_times(s:end)-all_times(s);

A = 0.0000011803;
d =  0.00031408;
alpha_0 =  0.000023596;

fit = @(t) alpha_0 + A * (1-exp(-d .* t));
fit_alphas = fit(d_times);


%figure();
plot(d_times, d_alphas*1e5, "*m", d_times, fit_alphas*1e5, "k");
ylim([2.35   2.5]);

title("Curve fit applied to posft annealing thermal diffusivity.")
xlabel("Time (s)");
ylabel("Thermal diffusivity (10^{-5} m^2/s)");
text(6000, 2.42, "alpha = alpha_0 + A(1-exp(-d*t))", "color", "k");
text(6000, 2.41, "alpha_0 = 2.3596e-5 m^2/s", "color", "k");
text(6000, 2.40, "A = 1.1803e-6 m^2/s", "color", "k");
text(6000, 2.39, "d = 3.1408e-4 1/s", "color", "k");


filename = "~/strand/plots/curve_fit";
print("-dpdflatex", filename);
print("-dpsc", filename);
print("-depsc", filename);
print("-dsvg", filename);
print("-dpdf", filename);
print("-dpng", filename);