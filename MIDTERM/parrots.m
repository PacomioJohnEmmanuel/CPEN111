clc;
clf;
close all;
clear all;
# Load and display parrots.jpg
parrot = imread('D:/College Files/CPEN111/MIDTERM\parrots.jpg');
figure(1), imshow(parrot);

# examine the size of the parrots.jpg
whos parrot

# Convert the class uint8 color image parrots to a gray scale image,
# and display the full intensity range gray-scale image using the imshow command
parrot_g = rgb2gray(parrot);
figure(2), imshow(parrot_g, [0 255]);

# Covert the true color image to a gray-scale image
figure(3), imshow(parrot_g);
