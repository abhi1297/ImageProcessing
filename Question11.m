% Read spatial.jpg, apply averaging filter using masks of size 3 x 3, 5 x5, 9 x 9,15 x15 and
% 35x35 . Comment on the results.
clc;clear all;close all;
I = imread('contrast.jpg');
j=imnoise(I,'salt & pepper',0.02);
scale=[ 3 5 9 15 35]
for i=1:5
    subplot(3,2,1+i);
Kaverage = filter2(fspecial('average',scale(i)),I)/255;

imshow(Kaverage)

end
figure;
p=medfilt2(j);
imshow(p)
figure;
imshow(j);

