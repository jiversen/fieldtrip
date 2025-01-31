function test_bug2415(updatereference)

% MEM 1gb
% WALLTIME 00:15:00
% DEPENDENCY ft_read_event
% DATA private

% http://bugzilla.fieldtriptoolbox.org/show_bug.cgi?id=2409
% http://bugzilla.fieldtriptoolbox.org/show_bug.cgi?id=2415

if nargin<1
  updatereference = false;
end


filename1 = dccnpath('/project/3031000.02/test/bug2415/TriggerTest.bdf');
filename2 = dccnpath('/project/3031000.02/test/original/eeg/bdf/Newtest17-256.bdf');
filenameR = dccnpath('/project/3031000.02/test/bug2415.mat');

evt1 = ft_read_event(filename1);
evt2 = ft_read_event(filename2);

if updatereference
  save(filenameR, 'evt1', 'evt2');
end

reference = load(filenameR);

assert(isequal(evt1, reference.evt1));
assert(isequal(evt2, reference.evt2));



