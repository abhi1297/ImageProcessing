% Write a MATLAB program to perform the following. Use subplots and display the image
% with a title:
% i) Read cameraman.tif and rice .png image and display the image
% ii) Add the two images and display.
% iii) Subtract the two images and display
% iv) Add a constant value of 50 to one of the images and display
% v) Subtract a constant value 100 from one of the images and display.
% vi) Obtain negative of one of the image and display.
clear all; close all;clc;
 image1=imread('rice.png');
 image2=imread('cameraman.tif');
 image3=imadd(image1,image2);
 image4=imsubtract(image1,image2);
 image5=imadd(image1,50);
 image6=imsubtract(image2,100);
 image7=imcomplement(image1);
 subplot(331)
 imshow(image1);
 title('image1');
 subplot(332)
 imshow(image2);
 title('image2');
 subplot(333)
 imshow(image3);
 
 title('1');
 subplot(334)
 imshow(image4);
 
 title('2');
 subplot(335)
 imshow(image5);
 title('3');
 subplot(336)
 imshow(image6);
 
 title('4');
 subplot(337)
 imshow(image7);
 
 title('5');