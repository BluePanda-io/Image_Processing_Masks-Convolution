function imOut = myConvFreq(imX , imY)

    %% Pading in the First Image And Initialization of ImOut
    [M1,N1]=size(imX);
    [M2,N2]=size(imY);
    
    %% Pading for stoping the circular convolution
    imX=padarray(imX,[M2-1 N2-1],'post');
    imY=padarray(imY,[M1-1 N1-1],'post');
%     
%     size(imX)
%     size(imY)
    
    %% 2D Fast fourier tranform
    
    imXFFT=fft2(imX);
    imYFFT=fft2(imY);
    
    
    %% Regular multiplication of the two tables
    
    OutFFT = imXFFT.*imYFFT;
%     size(OutFFT)

    %% Inverse tranform 
    imOut=real(ifft2(OutFFT));
%     Out
%     size(Out)
    


end

