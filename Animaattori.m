% Animaattori
clc
clearvars
close all

matrixDir = 'C:\Users\putki\Documents\MATLAB tiedostot\Perseily\Bad Apple\Matrixes160p';
cd(matrixDir)

matrixList = dir('*.txt');

tic

for i=1:length(matrixList)
    mfilename = matrixList(i).name;

    A = readmatrix(mfilename);
    spy(A)
    pause(0.012)
end

eTime = toc
averageTime = eTime / length(matrixList)
target = 3*60 + 40
difference = eTime - target
disp('Done.')