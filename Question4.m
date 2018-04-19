% Read mr.jpg image which is a magnetic resonance image with an upper thoracic human
% spine with a fracture dislocation. Apply power law transformation with exponents ?=0.6,
% ?=0.4, ?=0.3. Display the outputs and comment on the results.
clc;clear all;close all;
r=imread('MR.jpg');
c=1;
y=2.5;
y1=[0.6 0.4 0.3 ]; 

for i=1:length(y1)
s=c*power(im2double(r),y1(i));
subplot(3,1,i); imshow(s); title(['gamma=',num2str(y1(i))]);
end
