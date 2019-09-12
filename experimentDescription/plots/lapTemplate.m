
%% CREATE FIGURE
fig = figure;
fig.WindowState = 'maximized';
fig.NumberTitle = 'off';
fig.Name = 'LAP PARTS TEMPLATE';
fig.Color = [1 1 1];

colormap(hsv);

%% CREATE LINES

% Create line
annotation(fig,'line',[0.877604166666665 0.877604166666665],...
    [0.925131117266832 0.108033240997213],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.485416666666666 0.485416666666666],...
    [0.925131117266838 0.108033240997218],'Color',[1 0 1],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.172916666666667 0.172916666666667],...
    [0.925131117266847 0.108033240997229],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.174479166666666 0.174479166666666],...
    [0.925131117266844 0.108033240997226],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.197916666666666 0.197916666666667],...
    [0.925131117266844 0.108033240997225],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.290104166666666 0.290104166666666],...
    [0.92513111726684 0.108033240997222],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.300520833333333 0.300520833333333],...
    [0.925131117266839 0.10803324099722],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.3125 0.3125],...
    [0.925131117266839 0.10803324099722],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.322916666666667 0.322916666666667],...
    [0.925131117266839 0.10803324099722],'Color',[1 0 1],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.367187499999999 0.367187499999999],...
    [0.925131117266839 0.10803324099722],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.3890625 0.3890625],...
    [0.92513111726684 0.108033240997221],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.468749999999999 0.468749999999999],...
    [0.925131117266836 0.108033240997218],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.502083333333333 0.502083333333333],...
    [0.925131117266836 0.108033240997217],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.572395833333332 0.572395833333332],...
    [0.925131117266836 0.108033240997217],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.592708333333332 0.592708333333332],...
    [0.925131117266835 0.108033240997215],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.640104166666666 0.640104166666666],...
    [0.925131117266834 0.108033240997214],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.666145833333332 0.666145833333332],...
    [0.925131117266834 0.108033240997213],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.752083333333332 0.752083333333333],...
    [0.925131117266834 0.108033240997215],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');

% Create line
annotation(fig,'line',[0.797395833333333 0.797395833333333],...
    [0.925131117266832 0.108033240997213],'Color',[1 0 0],'LineWidth',1,...
    'LineStyle','-.');


%% CREATE PLOT

% load data to time table
data = readtable('C:\Users\geibfil\Desktop\JRC-E-3\experimentData\1308-01\processed_data\IMU_turns.csv');
data = data(1256*20 : 1483*20, :);
time = seconds(transpose(0 : size(data, 1)-1) ./ 20);
data = table2timetable(data(:,2:end),'RowTimes',time);

% create stacked plot
plot = stackedplot(data);
plot.DisplayVariables = {'Bound' {'Conv' 'PosTH' 'NegTH'} 'Turn' 'Acc'};

plot.Title = 'Lap Parts Template';
plot.FontSize = 12;
plot.DisplayLabels = {'Bound' 'VeloZ' 'Parts' 'AccZ'};

plot.GridVisible = 'off';
plot.XLabel = '';
plot.LineWidth = 1.5;

plot.AxesProperties(2).LegendLabels = {'Velocity' 'Left TH' 'Right TH'};
%plot.LineProperties(2).LineStyle = {'-' '--' '--'};
plot.AxesProperties(2).LegendVisible = 'on'; 

%% CREATE ACC NAMES

% Create textarrow
annotation(fig,'textarrow',[0.210416666666667 0.173958333333333],...
    [0.260387811634349 0.260387811634349],'String',{'OP01'});

% Create textarrow
annotation(fig,'textarrow',[0.331770833333333 0.316145833333333],...
    [0.261311172668513 0.261311172668513],'String',{'OP03'});

% Create textarrow
annotation(fig,'textarrow',[0.515625 0.474479166666666],...
    [0.281625115420129 0.281625115420129],'String',{'OP05'});

% Create textarrow
annotation(fig,'textarrow',[0.60625 0.58125],...
    [0.261311172668513 0.261311172668513],'String',{'OP07'});

% Create textarrow
annotation(fig,'textarrow',[0.677604166666667 0.652604166666667],...
    [0.261311172668512 0.261311172668512],'String',{'OP08'});

% Create textarrow
annotation(fig,'textarrow',[0.515625 0.486458333333334],...
    [0.261311172668513 0.261311172668513],'String',{'OP06'});

% Create textarrow
annotation(fig,'textarrow',[0.808333333333333 0.7734375],...
    [0.261311172668513 0.261311172668513],'String',{'OP09'});

% Create textarrow
annotation(fig,'textarrow',[0.401041666666666 0.375520833333333],...
    [0.261311172668512 0.261311172668513],'String',{'OP04'});

% Create textarrow
annotation(fig,'textarrow',[0.209375 0.209375],...
    [0.0590951061865189 0.134810710987996],'String',{'RF02'});

% Create textarrow
annotation(fig,'textarrow',[0.230729166666667 0.230729166666667],...
    [0.0794090489381348 0.173591874422899],'String',{'B01'});

% Create textarrow
annotation(fig,'textarrow',[0.279166666666667 0.279166666666667],...
    [0.0784856879039705 0.172668513388735],'String',{'B02'});

% Create textarrow
annotation(fig,'textarrow',[0.324479166666666 0.324479166666666],...
    [0.0784856879039703 0.172668513388735],'String',{'B03'});

% Create textarrow
annotation(fig,'textarrow',[0.3484375 0.3484375],...
    [0.0594594594594595 0.14404432132964],'String',{'RF03'});

% Create textarrow
annotation(fig,'textarrow',[0.376041666666667 0.376041666666667],...
    [0.0784856879039704 0.134810710987996],'String',{'RF04'});

% Create textarrow
annotation(fig,'textarrow',[0.410416666666666 0.410416666666666],...
    [0.0794090489381347 0.147737765466297],'String',{'RF05'});

% Create textarrow
annotation(fig,'textarrow',[0.423958333333333 0.423958333333333],...
    [0.0590951061865189 0.143120960295475],'String',{'RF06'});

% Create textarrow
annotation(fig,'textarrow',[0.452083333333334 0.452083333333333],...
    [0.0784856879039705 0.132963988919668],'String',{'RF07'});

% Create textarrow
annotation(fig,'textarrow',[0.501562499999999 0.501562499999999],...
    [0.0784856879039703 0.132963988919667],'String',{'RF8'});

% Create textarrow
annotation(fig,'textarrow',[0.520312499999999 0.5203125],...
    [0.0581717451523544 0.131117266851339],'String',{'RF9'});

% Create textarrow
annotation(fig,'textarrow',[0.535416666666667 0.5265625],...
    [0.0775623268698061 0.131117266851339],'String',{'RF10'});

% Create textarrow
annotation(fig,'textarrow',[0.5546875 0.561458333333333],...
    [0.0594594594594595 0.137580794090489],'String',{'B04'});

% Create textarrow
annotation(fig,'textarrow',[0.5875 0.575],...
    [0.0585585585585586 0.127423822714681],'String',{'RF12'});

% Create textarrow
annotation(fig,'textarrow',[0.5703125 0.5703125],...
    [0.0774774774774775 0.126500461680517],'String',{'RF11'});

% Create textarrow
annotation(fig,'textarrow',[0.6109375 0.6109375],...
    [0.0775623268698061 0.119113573407202],'String',{'RF13'});

% Create textarrow
annotation(fig,'textarrow',[0.664583333333333 0.664583333333333],...
    [0.0775623268698061 0.139427516158818],'String',{'RF14'});

% Create textarrow
annotation(fig,'textarrow',[0.708333333333333 0.708333333333333],...
    [0.0784856879039705 0.134810710987996],'String',{'RF15'});

% Create textarrow
annotation(fig,'textarrow',[0.730729166666667 0.730729166666667],...
    [0.0581717451523546 0.134810710987996],'String',{'RF16'});

% Create textarrow
annotation(fig,'textarrow',[0.75625 0.75625],...
    [0.0775623268698061 0.12927054478301],'String',{'RF17'});

% Create textarrow
annotation(fig,'textarrow',[0.788541666666666 0.788541666666667],...
    [0.0775623268698061 0.139427516158818],'String',{'RF18'});

% Create textarrow
annotation(fig,'textarrow',[0.820833333333333 0.820833333333332],...
    [0.0775623268698061 0.13573407202216],'String',{'RF19'});

% Create textarrow
annotation(fig,'textarrow',[0.844270833333333 0.844270833333333],...
    [0.0581717451523546 0.141274238227147],'String',{'RF20'});

% Create textarrow
annotation(fig,'textarrow',[0.857291666666667 0.857291666666666],...
    [0.0784856879039705 0.133887349953832],'String',{'RF21'});

% Create textarrow
annotation(fig,'textarrow',[0.192708333333334 0.192708333333334],...
    [0.0794090489381348 0.130193905817175],'String',{'RF01'});

% Create textarrow
annotation(fig,'textarrow',[0.332291666666667 0.2953125],...
    [0.281625115420129 0.281625115420129],'String',{'OP02'});

%% CREATE VELO DESCRIPTION

% Create textarrow
annotation(fig,'textarrow',[0.774479166666666 0.774479166666667],...
    [0.772853185595568 0.629732225300092],'TextBackgroundColor',[1 1 1],...
    'String',{'Roundabout between','via Gran Bretagna','and via Francia'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.205729166666667 0.189583333333333],...
    [0.772853185595568 0.578024007386888],'TextBackgroundColor',[1 1 1],...
    'String',{'Right turn','at the start'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.378645833333333 0.379166666666667],...
    [0.847645429362881 0.622345337026777],'TextBackgroundColor',[1 1 1],...
    'String',{'Right curve on','via Lussemburgo'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.485416666666667 0.485416666666667],...
    [0.848568790397045 0.610341643582641],'TextBackgroundColor',[1 1 1],...
    'String',{'Crossroad between','via Lussemburgo','and via Germania'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.445833333333333 0.477604166666667],...
    [0.772853185595568 0.58264081255771],'TextBackgroundColor',[1 1 1],...
    'String',{'Entering the','crossroad'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.518229166666666 0.492708333333333],...
    [0.772853185595568 0.58264081255771],'TextBackgroundColor',[1 1 1],...
    'String',{'Exiting the','crossroad'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.653125 0.652604166666667],...
    [0.772853185595568 0.670360110803324],'TextBackgroundColor',[1 1 1],...
    'String',{'Left curve on via','Gran Bretagna'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.8421875 0.868229166666667],...
    [0.772853185595568 0.632502308402585],'TextBackgroundColor',[1 1 1],...
    'String',{'Small turn','at the end','(ignored)'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.584375 0.584375],...
    [0.772853185595568 0.580794090489381],'TextBackgroundColor',[1 1 1],...
    'String',{'Crossroad between','via Germania and',' via Gran Bretagna'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.306770833333334 0.306770833333333],...
    [0.847645429362881 0.720221606648199],'TextBackgroundColor',[1 1 1],...
    'String',{'Roundabout between','via Lussemburgo','and via Germania'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.340104166666666 0.316145833333333],...
    [0.773776546629732 0.622345337026777],'TextBackgroundColor',[1 1 1],...
    'String',{'Exiting the','roundabout'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.269270833333333 0.296875],...
    [0.773776546629732 0.621421975992613],'TextBackgroundColor',[1 1 1],...
    'String',{'Entering the','roundabout'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

% Create textarrow
annotation(fig,'textarrow',[0.555208333333334 0.527604166666667],...
    [0.848568790397042 0.657433056325023],'TextBackgroundColor',[1 1 1],...
    'String',{'Small curve on','via Germania','(ignored)'},...
    'HorizontalAlignment','center',...
    'FontWeight','bold');

%% CERATE RECTANGLE

% Create rectangle
annotation(fig,'rectangle',...
    [0.315104166666667 0.313942751615882 0.0494791666666667 0.198522622345337],...
    'LineWidth',1.5,...
    'LineStyle','-.');

%% CREATE PARTS NAMES

% Create textbox
annotation(fig,'textbox',...
    [0.514020833333333 0.426592798251744 0.045833332122614 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String',{'VisitBump'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.810374999984476 0.426592798251744 0.0536458318897833 0.0249307474546265],...
    'String',{'WindowFour'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.679906250116414 0.426592798251742 0.0572916651144624 0.0249307474546265],...
    'String','WindowThree',...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.463500000031044 0.368732002555052 0.0447916654869915 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String','CrossOne',...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.630947916876206 0.368724264892755 0.0442708321691802 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String','LeftCurve',...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.2306875 0.362880886894402 0.0447916654869915 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String',{'PreRound'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.136416666666667 0.426592798251743 0.0276041659992188 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String',{'Start'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.403083333333332 0.426592798251744 0.0515624986185382 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String',{'WindowOne'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off');

% Create textbox
annotation(fig,'textbox',...
    [0.227843750628642 0.330563250698646 0.0473958320760479 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String','RoundOne',...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.59032291670547 0.428439520320071 0.0520833319363495 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String',{'WindowTwo'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.560635416705472 0.368421053099387 0.0453124988048027 0.0249307474546265],...
    'String','CrossTwo',...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.751000000031044 0.426592798251742 0.0473958320760478 0.0249307474546265],...
    'String',{'RoundTwo'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.354125000279396 0.368724264892755 0.0489583320294817 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String','RightCurve',...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.166625000031044 0.368724264892756 0.0427083322157463 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String',{'StartTurn'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.21380208338766 0.426819371079275 0.0604166650213301 0.0249307474546265],...
    'VerticalAlignment','middle',...
    'String',{'FastFirstBump'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create textbox
annotation(fig,'textbox',...
    [0.313499999999999 0.427199221838477 0.0531249985719721 0.0243243238678924],...
    'String',{'SecondBump'},...
    'LineWidth',1,...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FitBoxToText','off',...
    'BackgroundColor',[1 1 1]);

% Create arrow
annotation(fig,'arrow',[0.164583333333333 0.174479166666667],...
    [0.437673130193906 0.437673130193906]);

% Create arrow
annotation(fig,'arrow',[0.275520833333333 0.296875],...
    [0.373961218836565 0.444136657433056]);

% Create arrow
annotation(fig,'arrow',[0.275520833333333 0.308854166666667],...
    [0.343490304709141 0.382271468144044]);