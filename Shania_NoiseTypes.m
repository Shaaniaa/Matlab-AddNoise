%Read picture from disrectory
I = imread('C:\Users\Dell\OneDrive\Pictures\Apple.jpg');
subplot(3,3,1)  %subplot always comes before imshow , here is 3 row , 3 column and position where this image will be stored is 1
imshow(I),title('original') % display result with title. comma btw imshow and titile means "And"

%Salt & Pepper Noise
[r,c,s] = size(I); %in workspace it will show size of image stored in I variable
y = imnoise(I,'salt & pepper',0.19); %imnoise func add noise . adding salt n pepper and intensity of this noise type is i am taking 0.19
subplot(3,3,3) % subplot it on 3rd position
imshow(y),title('Salt n pepper') %default noise for salt n pepper is 10% which 0.1


%Bit resolution: To display image in different bits resolution
b=[50 50 3];
for i =1:length(b)
    
    d = 2^b(i); %2 power is 3 because length of b is 3 
    y=round(I/d);   % highest resolution is 255
    subplot(3,3,2)
    imshow(y*d),title('Bit Resolution')
end
 
%Gaussian Noise
y = imnoise(I,'gaussian',0.19); %adding gaussian noise and intensity of this noise i am taking is 0.19
subplot(3,3,5)
imshow(y),title('Gaussian noise')


%Poisson Noise
y = imnoise(I,'poisson'); %adding poisson noise
subplot(3,3,4)
imshow(y),title('Poisson noise')


%Speckle Noise
y = imnoise(I,'speckle',0.19); %adding Speckle noise and intensity of this noise i am taking is 0.19
subplot(3,3,6)
imshow(y),title('Speckle noise')