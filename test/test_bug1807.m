function test_bug1807

% MEM 1gb
% WALLTIME 00:10:00
% DEPENDENCY ft_senstype bti2grad ft_datatype_sens ft_read_header ft_read_sens
% DATA private

dataset = dccnpath('/project/3031000.02/test/original/meg/bti248grad/e,rfhp1.0Hz,COH');

hdr  = ft_read_header(dataset);
grad = ft_read_sens(dataset);

assert(ft_senstype(hdr, 'bti248grad'));
assert(ft_senstype(grad, 'bti248grad'));

