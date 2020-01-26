c=imread("cameraman.tif");
c1=imread("cameraman.tif");
c2=imread("cameraman.tif");
c3=imread("cameraman.tif");

[m,n]=size(c);

%a=input("input constant value: ");
g=input("input gamma value: ");
for i=1:m
    for j=1:n
        c1(i,j)=1*(double(c1(i,j))^double(g));
    end
end

g=input("input gamma value: ");
for i=1:m
    for j=1:n
        c2(i,j)=1*(double(c2(i,j))^double(g));
    end
end

g=input("input gamma value: ");
for i=1:m
    for j=1
       c3(i,j)=1*(double(c3(i,j))^double(g));
    end
end


subplot(2,2,1);
imshow(c);
title('Original');
subplot(2,2,2);
imshow(c1);
title('gamma=1.5');
subplot(2,2,3);
imshow(c2);
title('gamma=1');
subplot(2,2,4);
imshow(c3);
title('gamma=2');
