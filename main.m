clear all;clc;

SG4X = assesment('SG4X', 4.4, 8.7, [0 1000 2000 3000 4000; 4 0 0 0.1 10]);
SG3X = assesment('SG3X', 3, 10, [0 500 1000 1500 3000; 5 -2 -1.5 -0.5 8]);

%% optis test
% SG3X.plot_optipitch(SG3X.get_optipitch, SG3X.get_turbineID)
% SG4X.plot_optipitch(SG4X.get_optipitch, SG4X.get_turbineID)
optis = assesment
optis.get_optipitch
optis = optis.set_optipitch([0 500 1000 1500 3000; 5 -2 -1.5 -0.5 8])
optis.get_optipitch

%% filters test
filt = SpeedFilters
filt = filt.build_LP_filter(3, 4, 0.1)
filt = filt.build_HP_filter(3, 4, 0.1)
filt = filt.build_StopBand_filter(3, 4, 0.1)
filt.plot_LPFilter
filt.plot_HPFilter
filt.plot_StopBand_Filter

%% SPC test
SPC=assesment
SPC.get_SPC
SPC = SPC.set_SPC([3 5 7 9 11 12], [0 100 1000 1500 3000 3000])
SPC.get_SPC
SPC.plot_SPC(SPC.get_SPC)