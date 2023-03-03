% Muodosta pikselit
close all
clearvars
clc

imageDir = 'C:\Users\putki\Documents\MATLAB tiedostot\Perseily\Bad Apple\Images';
matrixDir = 'C:\Users\putki\Documents\MATLAB tiedostot\Perseily\Bad Apple\Matrixes160p';
cd(imageDir)
picList = dir('*.jpg');

for i=1:length(picList)
    ifilename = picList(i).name;
    mfilename = [sprintf('%04d',i) '.txt'];
    mfullname = fullfile(matrixDir, mfilename);

    rgbScale = imread(ifilename);
    grayScale = rgb2gray(rgbScale);
    logicalScaleO = grayScale < 128;

    logicalScaleF = logicalScaleO(1:3:end, 1:3:end);
    
    writematrix(logicalScaleF,mfullname,'Delimiter','tab')
end

disp('Done.')