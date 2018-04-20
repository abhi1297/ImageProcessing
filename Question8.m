clc;close all;clear all;
img1=imread('hist1.jpg');
img2=imread('hist2.jpg');
img3=imread('hist3.jpg');
img4=imread('hist4.jpg');
subplot(4,3,1);imshow(img1);title('Dark image');
subplot(4,3,4);imshow(img2);title('Bright image');
subplot(4,3,7);imshow(img3);title('Low contrast image');
subplot(4,3,10);imshow(img4);title('High contrast image');
for a=2:3:11
   if(a==2)
       img=img1;
   elseif(a==5)
       img=img2;
   elseif(a==8)
       img=img3;
   else
       img=img4;
   end
   subplot(4,3,a);imhist(img);
   if(a==2),title('Histogram');end
   J=histeq(img);
   subplot(4,3,a+1);imshow(J);
   if(a==2),title('Histogram equalisation');end
end