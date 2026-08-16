% GUIA 1 PUNTO 1

clear
clc
%abrir imagen
im = imread('Lena.png');

%mostrar la info donde se almaceno
whos im;

%imprimo
figure(1)
imshow(im);