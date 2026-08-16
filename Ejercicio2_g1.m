% guia 1 punto 2

clear
clc
%abrir imagen
im = imread('Lena.png');

%imagen en gris
im_gris = rgb2gray(im);

%imprimo en gris
figure(1)
imshow(im_gris);

%imprimo los colores
figure(2)
subplot(3,1,1)
red_channel = im; %hago q sea 3D
red_channel(:,:,2) = 0; %apago el verde
red_channel(:,:,3) = 0; %apago el azul
imshow(red_channel);

subplot(3,1,2)
green_channel = im; %hago q sea 3D
green_channel(:,:,1) = 0; %apago el rojo
green_channel(:,:,3) = 0; %apago el azul
imshow(green_channel);

subplot(3,1,3)
blue_channel = im; %hago q sea 3D
blue_channel(:,:,2) = 0; %apago el verde
blue_channel(:,:,1) = 0; %apago el rojo
imshow(blue_channel);