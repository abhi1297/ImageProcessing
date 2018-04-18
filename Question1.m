% Read the color image peppers.png and display and call it as J1. Make a new color image
% J2 by swapping the color bands of J1 as follows. First, just set J2 = J1 to initialize the
% new image with the right size. Then make the Red band of J 2 equal to the Blue band of
% J1, make the Green band of J2 equal to the Red band of J1 , and make the Blue band of J2
% equal to the Green band of J1. Display the new image
j1=imread('peppers.png');
imshow(j1);
title('original image');
figure;
j2=j1;
j2(:,:,1)=j1(:,:,3);
j2(:,:,2)=j1(:,:,1);
j2(:,:,3)=j1(:,:,2);
imshow(j2);
title('swapped bands');