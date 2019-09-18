
%% CREATE FIGURE
fig = figure;
fig.WindowState = 'maximized';
fig.NumberTitle = 'off';
fig.Name = 'BOUNDARIES TEMPLATE';
fig.Color = [1 1 1];

colormap(hsv);

%% CREATE PLOT

% load data to time table
car = 'C:\Users\geibfil\Desktop\JRC-E-3\experimentData\1908-01';
imu = data2timetable([car,'\parsed_data\IMU_compensated_20.csv']);
velo = data2timetable([car,'\processed_data\IMU_velocity.csv']);
bound = data2timetable([car,'\processed_data\IMU_boundaries.csv']);

% merge loaded data
data = [imu velo bound];

% create stacked plot
statPlot = stackedplot(data);
statPlot.DisplayVariables = {{'AccX','AccY','AccZ'}
                             {'GyrX','GyrY','GyrZ'}
                             {'MagX','MagY','MagZ'}
                             'MeanConv'
                             'Bound'};
 
% set up stacked plot
statPlot.FontSize = 12;
statPlot.DisplayLabels = {'Acc' 'Gyr' 'Mag' 'Velo' 'Bound'};
statPlot.GridVisible = 'off';
statPlot.XLabel = '';

% set up parameters for every 'sub plot'
% 1st - 3rd plot
for i = 1:3
    statPlot.AxesProperties(i).LegendVisible = 'off';
    statPlot.AxesProperties(i).LegendLocation = 'northeast';
    statPlot.AxesProperties(i).LegendLabels = {'X axis', 'Y axis', 'Z axis'}; 
    statPlot.LineProperties(i).LineWidth = 0.1;
end

% 4th plot
statPlot.LineProperties(4).LineWidth = 0.5;

% 5th plot
statPlot.LineProperties(5).LineWidth = 1;
statPlot.AxesProperties(5).YLimits = [-0.5 1.5];

%% CERATE MARKERS

% Create textbox
annotation(fig,'textbox',...
    [0.138000000426856 0.197368421169584 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 01',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.178625000426856 0.197368421169584 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 02',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.217166667093522 0.197368421169584 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 03',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.257270833760187 0.197368421169584 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 04',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.295812500426853 0.197368421169584 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 05',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.33435416709352 0.197368421169583 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 06',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.37341666709352 0.197368421169583 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 07',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.412479167093519 0.197368421169583 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 08',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.451541667093518 0.197368421169583 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 09',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.491645833760182 0.197368421169583 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 10',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.52914583376018 0.197368421169583 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 11',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.56664583376018 0.197368421169583 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 12',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.603625000426847 0.197368421169583 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 13',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.642166667093514 0.198291782203747 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 14',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.68383333376018 0.197368421169582 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 15',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.72289583376018 0.197368421169582 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 16',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.761437500426847 0.197368421169582 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 17',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.797375000426847 0.197368421169582 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 18',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.834875000426845 0.197368421169582 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 19',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.872375000426843 0.197368421169582 0.0296874991462877 0.0175438591813117],...
    'VerticalAlignment','middle',...
    'String','Lap 20',...
    'Margin',1,...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create rectangle
annotation(fig,'rectangle',...
    [0.130729166666666 0.107109879963066 0.00260416666666691 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.172395833333333 0.106186518928901 0.00260416666666691 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.211458333333333 0.106186518928901 0.00312499999999999 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.249479166666667 0.106186518928901 0.00364583333333332 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.290104166666664 0.106186518928901 0.00312500000000282 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.328125 0.106186518928901 0.00260416666666669 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.367187499999997 0.106186518928901 0.0026041666666668 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.40625 0.106186518928901 0.00312499999999999 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.445312499999995 0.106186518928901 0.0026041666666668 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.48385416666666 0.107109879963065 0.00468750000000656 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.523958333333325 0.107109879963065 0.00312500000000848 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.561458333333325 0.107109879963065 0.0026041666666754 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.597916666666658 0.107109879963065 0.00260416666666674 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.635416666666658 0.1061865189289 0.00260416666666674 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.676562499999991 0.1061865189289 0.00312500000000882 0.820867959372113],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.717187499999991 0.1061865189289 0.00260416666666674 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.755208333333325 0.105263157894736 0.00312500000000882 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.793749999999991 0.1061865189289 0.00104166666667538 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.829166666666657 0.105263157894736 0.00260416666666674 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.867708333333321 0.1061865189289 0.00156250000001212 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);

% Create rectangle
annotation(fig,'rectangle',...
    [0.904166666666653 0.1061865189289 0.0026041666666804 0.820867959372114],...
    'LineStyle',':',...
    'FaceColor',[0.466666666666667 0.674509803921569 0.188235294117647],...
    'FaceAlpha',0.3);
