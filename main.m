clear all;clc;

SG4X = assesment('SG4X', 4.4, 8.7, [0 1000 2000 3000 4000; 4 0 0 0.1 10]);
SG3X = assesment('SG3X', 3, 10, [0 500 1000 1500 3000; 5 -2 -1.5 -0.5 8]);

%% optis test
SG3X.plot_optipitch(SG3X.get_optipitch, SG3X.get_turbineID)
SG4X.plot_optipitch(SG4X.get_optipitch, SG4X.get_turbineID)

%% filters test
filt = SpeedFilters
% filt = filt.build_LP_filter(3, 4, 0.1)
% filt = filt.build_HP_filter(3, 4, 0.1)
% filt = filt.build_StopBand_filter(3, 4, 0.1)
% filt.plot_LPFilter
% filt.plot_HPFilter
% filt.plot_StopBand_Filter
filt.get_optipitch
filt = filt.set_optipitch([0 500 1000 1500 3000; 5 -2 -1.5 -0.5 8])
filt.get_optipitch
filt.plot_optipitch(filt.get_optipitch, filt.get_turbineID)