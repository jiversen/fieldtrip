function test_bug2469

% MEM 1gb
% WALLTIME 00:10:00
% DEPENDENCY ft_connectivityanalysis ft_connectivity_powcorr_ortho
% DATA private

% this test function tests the functionality of Hipp's method on
% sensor-level data.

filename = dccnpath('/project/3031000.02/test/bug2469.mat');
load(filename);

% this is only 1 channel data, will not work to begin with.
fdata.label{2,1} = strrep(fdata.label{1},'left','right');
fdata.fourierspctrm(:,2) = fdata.fourierspctrm(:,1).*exp(1i.*rand(8,1));

cfg        = [];
cfg.method = 'powcorr_ortho';
x          = ft_connectivityanalysis(cfg, fdata);
  



