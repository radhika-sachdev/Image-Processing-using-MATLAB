A=imread("cameraman.tif");
new=imread("cameraman.tif");
a=input("enter mask size: ");
[m,n]=size(A);

for i=1:m-(a-1)
    for j=1:n-(a-1)
        B=[];
        o=1;
        for k=i:i+(a-1)
            p=1;
            for l=j:j+(a-1)
                B(o,p)=A(k,l);
                p=p+1;
            end
            o=o+1;
        end
        mid=(max(max(B))+min(min(B)))/2;
        new(i+1,j+1)=uint8(mid);
    end
end

subplot(1,2,1);
imshow(A);
title("original");

subplot(1,2,2);
imshow(new);
title("After Mid Point Filtering");

