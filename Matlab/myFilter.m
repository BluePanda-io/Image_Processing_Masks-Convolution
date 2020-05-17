function imOut = myFilter(imX , aMask)

[M1,N1,Nimg]=size(imX)
[M2,N2,Nmask]=size(aMask)


% imOut=imX; % SOS delete

if Nmask==1
    
    NChannel=input('1 = One Channel Output, 2 = N Channel Output ');
    
    if NChannel==1 % One Channel Output
        imX=rgb2gray(imX);
        imX=im2double(imX);
        imOut = myConvSpat(imX , aMask);
    elseif NChannel==2 % N Channel Output
        imOut=zeros(M1+M2-1,N1+N2-1,Nimg);
        size(imOut)
        for i=1:Nimg
            Temp=myConvSpat(imX(:,:,i),aMask);
            imOut(:,:,i)=Temp;
        end
    end
    
else % Pola kanalia tis maskas
    if Nimg==Nmask
        imOut=zeros(M1+M2-1,N1+N2-1,Nimg);
        size(imOut)
        for i=1:Nimg
            Temp=myConvSpat(imX(:,:,i),aMask(:,:,i));
            imOut(:,:,i)=Temp;
        end
    else
        'error'
    end
end

end














