%% Input Data - Images
load dip_hw_1.mat;
% im_rgb is in workspace
im_gray = rgb2gray(im_rgb);
im1_rgb = im_rgb (800:900 ,200:320 ,:);
im1_gray = im_gray (800:900 ,200:320);


im1_gray=im2double(im1_gray); % Tranform the image into Double Sos this is really important in any other case the program will not work because it will stop at 255 (Clasic problem of unit8 in images)
im1_rgb=im2double(im1_rgb);
%% Create the Mask
% h=ones(3,3,3)/11;
h=ones(3,3,1)/11;

%% Use the Function
imOut = myFilter(im1_rgb , h);

figure(1);imshow(im1_gray)
figure(2);imshow(imOut)