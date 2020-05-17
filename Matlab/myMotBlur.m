function [imOut ,myMotBlurMask] = myMotBlur(imX , mot_vec , exposure_time)


mot_vec=mot_vec*exposure_time; % Pernoume to pragmatiko megethos tou

Distance=sqrt(mot_vec*transpose(mot_vec));

Dimensions=floor(Distance/2); % Epikindino Elenxeto an exis problima

H=zeros(Dimensions*2+1,Dimensions*2+1);

for i=1:Dimensions*2+1
    for j=1:Dimensions*2+1
        Vec=[i-Dimensions*2+1;j-Dimensions*2+1];
        InProd=sqrt(abs(mot_vec*Vec));
        
        
        FT=1-InProd/Distance;
        
        H(i,j)=FT;
        if FT<0.5
            H(i,j)=0;
        end
    end
end
H
Sumi=sum(sum(H))
H=H/Sumi

myMotBlurMask=H

imOut=myFilter(imX , H);

end

