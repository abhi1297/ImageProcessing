clc;clear all;close all;
i= imread('squ.tif');
imshow(i);
figure;
imshow(histeq(i));
fun=@(block_struct)histeq(block_struct.data);
figure;
imshow(blockproc(i,[3 3],fun))
