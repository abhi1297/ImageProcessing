% Read remote.jpg image which is an aerial image which has washed out appearance.
% Apply power law transformation with ?=3,4,5. Display and comment on the results.
clc;clear all;close all;
r=imread('remote.jpg');
c=1;
r;
im2double(r);

y1=[3 4 5 ]; 

for i=1:length(y1)
s=c*power(im2double(r),y1(i));
subplot(3,1,i); imshow(s); title(['gamma=',num2str(y1(i))]);
end
