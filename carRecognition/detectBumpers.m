function ret = detectBumpers(carPath)

%% LOAD DATA

% constant frequency
FREQ = 20;

% load car data
data = readtable(strcat(carPath, '\processed_data\IMU_velocity.csv'));
bound = readtable(strcat(carPath, '\processed_data\IMU_boundaries.csv'));
laps = readtable(strcat(carPath, '\processed_data\IMU_laps.csv'));

% edit table
data = table(data.Time, data.VeloZ, bound.Bound, ...
                                 'VariableNames', {'Time' 'Velo' 'Bound'});

% modifi velocity data
data.Velo(data.Velo > 0) = 0;
data.Velo = abs(data.Velo);

%% FIND BUMPERS

% create convolution matrix and proceed convolution
convMat = ones(1, FREQ * 2) / FREQ * 2;
tmp = conv(convMat, data.Velo, 'full');

% compute convolution offsets and cut edges
data.Conv = tmp(ceil(size(convMat,2)/2) : end-floor(size(convMat,2)/2));
        
% create copy
data.Bump = data.Conv;

% process lap by lap
for lap = 1 : size(laps, 1)
    lapSt = laps{lap, 'Start'} * FREQ;
    lapEn = laps{lap, 'End'} * FREQ;
    
    lMed = median(data{lapSt : lapEn, 'Bump'});
    lStd = std(data{lapSt : lapEn, 'Bump'});
    
    data{lapSt:lapEn, 'Bump'}(data{lapSt:lapEn, 'Bump'} < lMed+lStd/2) = 0;
          
    % remove noise created by braking ~ last 10 s
    lapBrake = (laps{lap, 'End'} - 10) * FREQ;
    data{lapBrake:lapEn, 'Bump'} = 0;
end

% normalize data
data.Bump(data.Bump ~= 0) = 1;
data.Bump(data.Bound == 1) = 0;

% write table to CSV
writetable(data, strcat(carPath, '\processed_data\IMU_bumpers.csv'));

%% END OF SCRIPT
ret = true;

end
