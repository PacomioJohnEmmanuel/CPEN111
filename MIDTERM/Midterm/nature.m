clc;
clf;
close all;
clear all;

# Open the image file nature.jpg from the source folder
source = imread('D:/College Files/CPEN111/MIDTERM/nature.jpg');
figure(1), imshow(source);

# comparing image size of RGB nature.jpg to grayscale
whos source
grayscale = rgb2gray(source);
figure(2), imshow(grayscale);
imwrite(grayscale, 'D:/College Files/CPEN111/MIDTERM/grayscale.png');
whos grayscale

# intensifies red then save it
img_red = source;
img_red(:,:,2) = 0;
img_red(:,:,3) = 0;
imwrite(img_red, 'D:/College Files/CPEN111/MIDTERM/red_nature.png');

# intensifies green then save it
img_green = source;
img_green(:,:,1) = 0;
img_green(:,:,3) = 0;
imwrite(img_green, 'D:/College Files/CPEN111/MIDTERM/green_nature.png');

# intensifies blue then save it
img_blue = source;
img_blue(:,:,1) = 0;
img_blue(:,:,2) = 0;
imwrite(img_blue, 'D:/College Files/CPEN111/MIDTERM/blue_nature.png');

# displaying intensified red, green, and blue
figure(3),
subplot(1,3,1), imshow(img_red), title('Red');
subplot(1,3,2), imshow(img_green), title('Green');
subplot(1,3,3), imshow(img_blue), title('Blue');

