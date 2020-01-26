A=imread("cameraman.tif");
new=imread("cameraman.tif");
a=input("enter mask size: ");
[m,n]=size(A);
B=ones(a);

b=0;
for k=1:a
    for l=1:a
        b=b+B(k,l);
    end
end

for i=1:m-(a-1)
    for j=1:n-(a-1)
        sum=0;
        o=1;
        for k=i:i+(a-1)
            p=1;
            for l=j:j+(a-1)
                prod=double(A(k,l))*double(B(o,p));
                sum=sum+prod;
                p=p+1;
            end
            o=o+1;
        end
        new(i+1,j+1)=uint8(sum/b);
    end
end

subplot(1,2,1);
imshow(A);
title("original");

subplot(1,2,2);
imshow(new);
title("After Low Pass Filtering");

