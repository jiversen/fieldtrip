function test_bug1871

% MEM 1gb
% WALLTIME 00:10:00
% DEPENDENCY ft_struct2single 
% DATA private

cd(dccnpath('/project/3031000.02/test'));
load avgFIC.mat

avgFIC.avg = ft_struct2single(avgFIC.avg);

cfg = [];
cfg.xlim = [0.3 0.5];
cfg.layout = 'CTF151.lay';
cfg.zlim = 'maxmin';
cfg.colorbar = 'yes';
ft_topoplotER(cfg,avgFIC);
ft_multiplotER(cfg, avgFIC);

load bug1871

freq.powspctrm = ft_struct2single(freq.powspctrm);

cfg = [];
cfg.interactive = 'yes';
% cfg.showlabels  = 'no'; % this is a deprecated option, use cfg.marker instead
cfg.marker      = 'off'; 
cfg.zlim        = 'maxabs';
cfg.layout      = 'neuromag306cmb.lay';
ft_topoplotTFR(cfg, freq);
ft_multiplotTFR(cfg, freq);

