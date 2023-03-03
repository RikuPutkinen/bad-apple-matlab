% Kuvasarja.m
% Break the video into frames

workingDir = ''; % DESTINATION DIRECTORY HERE
videoDir = ''; % VIDEO SOURCE HERE

mkdir(workingDir)
cd(workingDir)
mkdir(workingDir, 'frames');
video = VideoReader(videoDir);


ii = 1;
while hasFrame(video)
    img = readFrame(video);
    filename = [sprintf('%04d',ii) '.jpg'];
    fullname = fullfile(workingDir, filename);
    imwrite(img, fullname)
    ii = ii+1;
end

disp('Done.')
