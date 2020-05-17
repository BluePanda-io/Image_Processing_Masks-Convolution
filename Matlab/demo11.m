%% Input Data - Images
load dip_hw_1.mat;
% im_rgb is in workspace
im_gray = rgb2gray(im_rgb);
im1_rgb = im_rgb (800:900 ,200:320 ,:);
im2_rgb = im_rgb (1200:1350 ,200:300 ,:);
im1_gray = im_gray (800:900 ,200:320);
im2_gray = im_gray (1200:1350 ,200:300);

im1_gray=im2double(im1_gray); % Tranform the image into Double Sos this is really important in any other case the program will not work because it will stop at 255 (Clasic problem of unit8 in images)
im2_gray=im2double(im2_gray);

%% Use Different Random Image

% im1_gray=round(rand(M1,N1)*255); % Only for test
% im2_gray=round(rand(M2,N2)*255);

% im1_gray=[1 2 3;4 5 6;7 8 9]; % Only for test
% im2_gray=[1 2; 3 4];


%% Show Images
% figure(1);imshow(im1_gray)
[M1,N1]=size(im1_gray);
% figure(2);imshow(im2_gray)
[M2,N2]=size(im2_gray);


%% Matlab Convolution of 2 Images
Conn = conv2(im1_gray,im2_gray);
% M1+M2-1;
% N1+N2-1;
% size(Conn)


%% My Convolutioon
imOut = myConvSpat(im1_gray , im2_gray);

%% Compare the two convolutions
size(Conn)
size(imOut)
Dif=Conn-imOut
Dif=sum(Dif)
Dif=sum(Dif)
% Conn
% imOut













