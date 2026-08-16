%Guia 2 punto 1 PDI

clear
clc

%abrir imagen 
im = imread('Lena.png');

%pongo en blanco y negro
im_gris = rgb2gray(im);

%muestro el histograma junto con la imagen og:
figure(1)
subplot(2,1,1);
    imshow(im_gris);
subplot(2,1,2);
    imhist(im_gris);
