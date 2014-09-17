%% prpare workspace
clc;clear;close all;

%% 1.input Image
% fname=uigetfile('.tiff');%opens ui for select image files
lena=imread('lena.tiff'); %reads selected image 

%% 2.greyscale and normalize image
grayLena = rgb2gray(lena);
normLena=double(grayLena)./255;

%% 3.impulse functions
h1=(1/6)*ones(1,6);
h2=h1';
h3= [-1 1];

%% 4.CONVOLVE!
convLena1 = conv2(h1,normLena);
convLena2 = conv2(h2,normLena);
convLena3 = conv2(h3,normLena);

%% 5.plot
subplot(2,2,1);imshow(lena); title('Original');
subplot(2,2,2);imshow(convLena1); title('H1');
subplot(2,2,3);imshow(convLena2); title('H2');
subplot(2,2,4);imshow(convLena3); title('H3');