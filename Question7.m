clc;clear all;close all;
im10=imread('fractal.jpg');
for i=1:8
s=bitget(uint8(im10),i);
subplot(3,3,i); imshow(uint8(s.*255)); title(['Bit-plane ',num2str(i)]);
end
subplot(3,3,9); imshow(im10); title('Original Image');