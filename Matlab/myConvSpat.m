function imOut = myConvSpat(imX , imY)

    %% Pading in the First Image And Initialization of ImOut
    [M1,N1]=size(imX);
    [M2,N2]=size(imY);

    imYPD=padarray(imY,[M1-1,N1-1],0,'both');
%     size(imY)
%     size(imYPD)
    
    imOut=zeros(M1+M2-1,N1+N2-1);
    
%     size(imOut)
    
    %% Flip of the Image because of the Convolution
    imX=fliplr(imX);
    imX=flipud(imX); % This 2 Commands can work with another command line which is faster
    
    %% for loop in all the output image
    for i=1:M1+M2-1
        for j=1:N1+N2-1
            Temp=imYPD(i:(M1-1+i),j:(N1-1+j)); % Use only the part of the image that is intersecting with ours
            
            imOut(i,j)=sum(sum(imX.*Temp)); % Polaplasiasmos stixio pros stixio kai anthrisma
        end
    end
    

end

