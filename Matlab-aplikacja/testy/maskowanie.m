clc; clear; close all;

maska = "../data/maska.jpg";
org = "../data/org.jpg";
sizeToResize = [200, 200];

mask = imread(maska);
mask = im2bw(mask);
imageData = regionprops(~mask);
I = imread(org);

for i = 1:length(imageData)
    dd = imageData(i).BoundingBox;
    newImg = I(floor(dd(2)):floor(dd(2)+(dd(4))), floor(dd(1)):floor(dd(1) + dd(3)), :);
    newImg = imresize(newImg, sizeToResize);
    imshow(newImg);
    pause();
end


