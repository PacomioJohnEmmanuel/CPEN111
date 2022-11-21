clc;
clf;
close all;
clear all;

# Opening original image fruits.png and view it.
j = imread('D:/College Files/CPEN111/LAB 1/fruits.png');
figure(1), imshow(j);
# Showing data type
imfinfo('fruits.png')

# Reducing the spatial resolution of the original image
# Saving as fruits2.png
pkg load image
k = imresize(j, 1/2);
imwrite(k, 'D:/College Files/CPEN111/LAB 1/fruits2.png');
l = imread('D:/College Files/CPEN111/LAB 1/fruits2.png');
whos l
figure(2), imshow(l)

# Coverting RGB image to HSV
# Saving as fruits3.png
m = rgb2hsv(l);
imwrite(m, 'D:/College Files/CPEN111/LAB 1/fruits3.png');
figure(3), imshow(m)
