clc;clear all;close all;
im8=imread('contrast.jpg');
r1=min(im2double(im8(:))); %contrast stretching
r2=max(im2double(im8(:)));
s1=0; s2=255;gamma=0.5;
figure();
rc=imadjust(im2double(im8),[r1;r2],[0;1],gamma);
rc1=imadjust(im8,[r1;r2],[0;1],gamma);

level=graythresh(im8);
bw=im2bw(im2double(im8),level);
subplot(141); imshow(imresize(im8,[255 255])); title('Original Image');
subplot(142); imshow(imresize(rc,[255 255])); title('Contrast stretched');
subplot(143); imshow(imresize(rc1,[255 255])); title('Contrast stretched');
subplot(144); imshow(imresize(bw,[255 255])); title('Threshold image');

