%% CREATE FIGURE
figure1 = figure;
figure1.WindowState = 'maximized';
figure1.NumberTitle = 'off';
figure1.Name = 'BUMPS TEMPLATE';
figure1.Color = [1 1 1];

colormap(hsv);

% load image
imshow('C:\Users\geibfil\Desktop\JRC-E-3\experimentDescription\plots\bumpCollage.jpg');

% Create textbox
annotation(figure1,'textbox',...
    [0.1931875 0.739612189026087 0.037760415665495 0.0295475524328201],...
    'VerticalAlignment','middle',...
    'String','SB01',...
    'Margin',4,...
    'LineWidth',1,...
    'LineStyle','--',...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FontSize',18,...
    'FitBoxToText','off',...
    'FaceAlpha',0.8,...
    'BackgroundColor',[1 1 0]);

% Create textbox
annotation(figure1,'textbox',...
    [0.771833333333333 0.413665743966064 0.0377604156654952 0.0295475524328204],...
    'VerticalAlignment','middle',...
    'String','RF15',...
    'Margin',4,...
    'LineWidth',1,...
    'LineStyle','--',...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FontSize',18,...
    'FitBoxToText','off',...
    'FaceAlpha',0.8,...
    'BackgroundColor',[1 1 0]);

% Create textbox
annotation(figure1,'textbox',...
    [0.780166666666666 0.674976916634578 0.0377604156654952 0.0295475524328201],...
    'VerticalAlignment','middle',...
    'String','SB03',...
    'Margin',4,...
    'LineWidth',1,...
    'LineStyle','--',...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FontSize',18,...
    'FitBoxToText','off',...
    'FaceAlpha',0.8,...
    'BackgroundColor',[1 1 0]);

% Create textbox
annotation(figure1,'textbox',...
    [0.479125 0.676823638702909 0.037760415665495 0.0295475524328201],...
    'VerticalAlignment','middle',...
    'String','SB02',...
    'Margin',4,...
    'LineWidth',1,...
    'LineStyle','--',...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FontSize',18,...
    'FitBoxToText','off',...
    'FaceAlpha',0.8,...
    'BackgroundColor',[1 1 0]);

% Create textbox
annotation(figure1,'textbox',...
    [0.180166666666666 0.418282549136885 0.0377604156654952 0.0295475524328204],...
    'VerticalAlignment','middle',...
    'String','SB04',...
    'Margin',4,...
    'LineWidth',1,...
    'LineStyle','--',...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FontSize',18,...
    'FitBoxToText','off',...
    'FaceAlpha',0.8,...
    'BackgroundColor',[1 1 0]);

% Create textbox
annotation(figure1,'textbox',...
    [0.475479166666666 0.442289936025159 0.037760415665495 0.0295475524328204],...
    'VerticalAlignment','middle',...
    'String','RF06',...
    'Margin',4,...
    'LineWidth',1,...
    'LineStyle','--',...
    'HorizontalAlignment','center',...
    'FontWeight','bold',...
    'FontSize',18,...
    'FitBoxToText','off',...
    'FaceAlpha',0.8,...
    'BackgroundColor',[1 1 0]);
