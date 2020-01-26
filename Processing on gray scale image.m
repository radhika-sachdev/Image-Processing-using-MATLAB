close all;
clear all;

c=imread("C:\Users\Radhika\Desktop\cameraman.tif");
imshow(c);
b=double(c);


%1. Write a Matlab program to determine the frequency of given pixel occurring in an image.
x=input("Enter pixel number whose freq is required: ")
count=0;
for i=1:size(b,1)
    for j=1:size(b,2)
        if b(i,j) == x
            count=count+1;
        end
    end
end
disp("Frequency of the given pixel is: ");
disp(count);


%2. Write a matlab program to calculate the global mean value in a two dimensional matrix M * N.
sum=0;
for i=1:size(b,1)
    for j=1:size(b,2)
        sum=sum+b(i,j);
    end
end
global_mean=sum/(size(b,1)*size(b,2));
disp("The global mean is: ")
disp(global_mean);
        
    
%3. Write a matlab program to calculate the mean value of every row in a two dimensional matrix M * N.
for i=1:size(b,1)
    sum=0;
    for j=1:size(b,2)
        sum=sum+b(i,j);
    end
    mean=sum/size(b,2);
    fprintf("Mean of the row %d is %d: \n",i,mean);
end


%4. Write a Matlab program to determine the frequency of each pixel occurring in a column of an image.
x=input('Enter pixel number to know its frequency: ');
j=input('Enter column number to search for the given pixel: ');

if j>=1 && j<=size(b,2)
    count=0;
    for i=1:size(b,1)
        if b(i,j)==x
            count=count+1;
        end
    end
    fprintf('\n The pixel %d occurs %d times in coulumn %d \n',x,count,j);
else
    disp('\n Column does not exist\n ');
end



%5. Write a Matlab program to find out total number of pixels which has less than the given intensity.
x=input('Enter pixel intensity threshold: ');
count=0;
for i=1:size(b,1)
    for j=1:size(b,2)
        if b(i,j)<x
            count=count+1;
        end
    end
end
disp('Number of pixels less than the given intensity are: ');
disp(count);

%Optional
%Write a Matlab program to determine the frequency of given pixel occurring in a color image.
d=imread("C:\Users\Radhika\Desktop\fruits.png");
imshow(d);
x=input("Enter the pixel number whose frequency is required: ")
count=0;
for i=1:size(d,1)
    for j=1:size(d,2)
        if d(i,j) == x
            count=count+1;
        end
    end
end
fprintf("Frequency of the given pixel in the image is %d: ",count);

