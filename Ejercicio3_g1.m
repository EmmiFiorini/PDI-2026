%guia 1 punto 3
clear
clc

%abrir imagen y la pongo en escala de grises
im = imread('Lena.png');
im_gris = rgb2gray(im);

%% a
%acotar rango entre 100 y 150 (el normal es 0 a 255): menor a 100 --> negro absoluto; 
% mayor a 150--> blanco absoluto. 
figure (1);
subplot(1,2,1);
imshow(im_gris);
title('normal');

subplot(1,2,2);
imshow(im_gris, [100 150]);
title('cambio de saturacion 100-150')

%% b y c
acotada = im_gris(100:220,150:200);

figure(2);
imshow(acotada);
title('Region acotada (filas 100-220, cols 150-200)');
impixelinfo(); %muestra la info del pixel donde esta el mouse