close all;
clear all;

load('/home/armitage/Documents/articles/2017/transport-or-detachment/figures-working/2d/precipreduc/n1.5_noinitialtopo_precipreduc.75_lrbc/data_02000_1.00e+00myr_1.00e-04myr_0.00e+00m_20.000Myr.mat');

flux3 = zeros(length(time),3);

fig2 = figure(2);
set(fig2,'position',[200 100 600 300])
plot(1e-6*lx*lx/kappa*time,kappa*lx*sed_flux,'k--')
flux3(:,1) = kappa*lx*sed_flux;
hold on

mat2csv([1e-6*lx*lx/kappa*time' kappa*lx*sed_flux],{"time","flux"},"../data/trns0.25.csv")

load('/home/armitage/Documents/articles/2017/transport-or-detachment/figures-working/2d/precipreduc/n1.5_noinitialtopo_precipreduc_lrbc/data_02000_1.00e+00myr_1.00e-04myr_0.00e+00m_20.000Myr.mat');
plot(1e-6*lx*lx/kappa*time,kappa*lx*sed_flux,'k')
flux3(:,2) = kappa*lx*sed_flux;
mat2csv([1e-6*lx*lx/kappa*time' kappa*lx*sed_flux],{"time","flux"},"../data/trns0.50.csv")

load('/home/armitage/Documents/articles/2017/transport-or-detachment/figures-working/2d/precipreduc/n1.5_noinitialtopo_precipreduc.25_lrbc/data_02000_1.00e+00myr_1.00e-04myr_0.00e+00m_20.000Myr.mat');
plot(1e-6*lx*lx/kappa*time,kappa*lx*sed_flux,'k-.')
flux3(:,3) = kappa*lx*sed_flux;
mat2csv([1e-6*lx*lx/kappa*time' kappa*lx*sed_flux],{"time","flux"},"../data/trns0.75.csv")

load('/home/armitage/Documents/articles/2017/transport-or-detachment/figures-working/2d/precipinc/n1.5_noinitialtopo_precipinc_lrbc/data_02000_1.00e+00myr_1.00e-04myr_0.00e+00m_20.000Myr.mat');
plot(1e-6*lx*lx/kappa*time,kappa*lx*sed_flux,'k-.')
flux3(:,4) = kappa*lx*sed_flux;
mat2csv([1e-6*lx*lx/kappa*time' kappa*lx*sed_flux],{"time","flux"},"../data/trns2.00.csv")
xlabel('Time (Myr)')
ylabel('Sediment flux (m^{3}/yr)')
% legend('n=1.3','n=1.5','location','southeast')
legend('\alpha_{1}=0.25','\alpha_{1}=0.5','\alpha_{1}=0.75','\alpha_{1}=2','location','northeast')
% legend('L=50 km','L=100 km','L=500 km','location','southeast')

% saveas(fig2,'transport_sedflux_precipchange.fig','fig');
% print(fig2,'-depsc','transport_sedflux_precipchange.eps');