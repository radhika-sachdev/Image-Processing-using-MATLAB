clear all;
close all;

k=imread("cameraman.tif");
k1=imread("cameraman.tif");
[m,n]=size(k);

a=input("enter lower limit: ");
b=input("enter upper limit: ");
c=min(min(k));
d=max(max(k));

for i=1:m
    for j=1:n
        k1(i,j)=uint8(double(k(i,j)-c)*((b-a)/(d-c))+a);
        if k1(i,j)>=255
            k1(i,j)=255;
        end
        if k1(i,j)<=0
            k1(i,j)=0;
        end
    end
end

subplot(1,2,1);
imshow(k);
title("original");

subplot(1,2,2);
imshow(k1);
title("After contrast stretching");
