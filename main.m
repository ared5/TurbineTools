clear all;clc;

SG4X = assesment('SG4X', 4.4, 8.7, [0 1000 2000 3000 4000; 4 0 0 0.1 10] );
SG3X = assesment('SG3X', 3, 10, [0 500 1000 1500 3000; 5 -2 -1.5 -0.5 8] );

%% 
SG3X.plotOptipitch
SG4X.plotOptipitch