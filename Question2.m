% Write a Matlab code to perform the following,
% i) Read a 1024 x 1024 flower.jpg image, subsample the image to sizes 512, 256,128,
% 64,32.
% ii) Use subplot and display the subsampled images to the same size 1024 x 1024 as
% shown in the fig below.
% iii) Comment on the result.
 %Obtain the above result using imresize() function.


clc; clear all;close all;

m=1024;
scale=[512 256 128 64 32] 
figure;
subplot(2,3,1);
imshow(Input);
s=num2str(m);
xlabel(s);
for i = 1:5 m=m/2;
subplot(2,3,i+1);
imshow(imresize(Input,[scale(i) scale(i)]));
s=num2str(m);
xlabel(s);
end
figure;
image32=imresize(Input,[32 32]);

m=32;
scale=[64 128 256 512 1024]; 
subplot(2,3,1);
imshow(image32);

s=num2str(m);
xlabel(s);
for i = 1:5 m=m*2;
subplot(2,3,i+1);
imshow(imresize(Input,[scale(i) scale(i)]));
s=num2str(m);
xlabel(s);
end



