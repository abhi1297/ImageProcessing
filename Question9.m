% Read squ.tif image which contains five black squares on a gray background which is
% slightly noisy but the noise is imperceptible. Apply histogram equalization and display.
% Apply local histogram equalization using 3x3 neighborhood and display. Comment on
% the result.
f=imread('squ.tif');
f=im2double(f);
w=3;
M=mean2(f);
k=1;
z=colfilt(f,[w w],'sliding',@std);
m=colfilt(f,[w w],'sliding',@mean);
A=k*M./z;
g=A.*(f-m)+m;
[J,T]= histeq(f);
subplot(311),imshow(f),title('original image');
subplot(312),imshow(J),title('equalised image');
subplot(313),imshow(g),title('local equalised image');
