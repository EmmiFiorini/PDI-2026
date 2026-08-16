% guia 1 punto 4

%% a
%i) uint8
%ii) 0-255

%% b
clear
clc

%abrir imagen y la la convierto a doble
im = imread('Lena.png');
imdouble = double(im);

figure (1);
subplot(2,2,1)
imshow(im);
title('Imagen og')

subplot(2,2,2)
imshow(imdouble)
title('imagen doble');

subplot(2,2,3)
imshow(imdouble, [0 255]);
title('prueba 128');

subplot(2,2,4)
imshow(imdouble / 128); % O prueben imdouble/512
title('prueba 512');