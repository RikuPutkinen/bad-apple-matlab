% Form the matrices
close all
clearvars
clc

imageDir = ''; % FRAME DIRECTORY HERE
matrixDir = ''; % MATRIX DESTINATION DIRECTORY HERE
cd(imageDir)
picList = dir('*.jpg');

for i=1:length(picList)
    ifilename = picList(i).name;
    mfilename = [sprintf('%04d',i) '.txt'];
    mfullname = fullfile(matrixDir, mfilename);

    % Turn the images into black and white matrices (1 = black, 0 = white)
    rgbScale = imread(ifilename);
    grayScale = rgb2gray(rgbScale);
    logicalScaleO = grayScale < 128;

    % Downscale the resolution so my computer could run the animation fast enough
    logicalScaleF = logicalScaleO(1:3:end, 1:3:end);
    
    writematrix(logicalScaleF,mfullname,'Delimiter','tab')
end

disp('Done.')
