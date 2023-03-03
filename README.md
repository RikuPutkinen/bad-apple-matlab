# bad-apple-matlab

Matlab scripts I used to make a Bad Apple animation in Matlab
[video link](https://youtu.be/wMUw1XXwqzI)

## Things you need
* The Bad Apple video (or any black and white video)

## How to use it

1. Go into **Kuvasarja.m** and assign the destination folder for the frames to **workingDir** and video source path to **videoDir** and run it.
You should now have a folder with the individual video frames in it.
2. Go into **Matriisikone.m** and assign the folder with the frames from step 1 to **imageDir** and the folder where you want the matrices to be written to **matrixDir** and run it.
You should now have a folder with matrices made out of the frames in it.
3. Go into **Animaattori.m** and assign the folder with the matrices from step 2 to **matrixDir** and run it. The animation should start after a while.
Adjust the pause on the line 18 if necessary.
