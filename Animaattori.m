% Animaattori
clc
clearvars
close all

matrixDir = ''; % MATRIX SOURCE DIRECTORY HERE
cd(matrixDir)

matrixList = dir('*.txt');

tic

for i=1:length(matrixList)
    mfilename = matrixList(i).name;

    A = readmatrix(mfilename);
    spy(A)
    pause(0.012)
end

% Helps check how accurate the timing is
% Adjust the pause on line 18 if necessary
eTime = toc
averageTime = eTime / length(matrixList)
target = 3*60 + 40
difference = eTime - target
disp('Done.')
