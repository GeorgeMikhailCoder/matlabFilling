I = imread('test1.png');
I=rgb2gray(I);

I = imFill(I,[1 1], 150);
close all
imshow(I)