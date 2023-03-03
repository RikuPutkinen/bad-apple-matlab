% Kuvasarja.m

% Muodosta kuvasarja
workingDir = 'C:\Users\putki\Documents\MATLAB tiedostot\Perseily\MoP';
%mkdir(workingDir)
%cd(workingDir)
%mkdir(workingDir, 'MoP')

BAVideo = VideoReader("C:\Users\putki\Downloads\MoP.mp4");

ii = 1;

while hasFrame(BAVideo)
    img = readFrame(BAVideo);
    filename = [sprintf('%04d',ii) '.jpg'];
    fullname = fullfile(workingDir, filename);
    imwrite(img, fullname)
    ii = ii+1;
end

disp('Done.')




