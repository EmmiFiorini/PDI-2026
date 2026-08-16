%ejercicio 5 g 1

clear
clc

%abrir imagen 
im = imread('Lena.png');

% imresize achica la matriz interpolando los valores
im_1_4  = imresize(im, 1/4);
im_1_8  = imresize(im, 1/8);
im_1_16 = imresize(im, 1/16);
im_1_32 = imresize(im, 1/32);

% Dibujar resultados del inciso A
figure(1);
sgtitle('Inciso A: Reducción de Resolución');
subplot(2,3,1); imshow(im); title('Original');
subplot(2,3,2); imshow(im_1_4); title('1/4');
subplot(2,3,3); imshow(im_1_8); title('1/8');
subplot(2,3,4); imshow(im_1_16); title('1/16');
subplot(2,3,5); imshow(im_1_32); title('1/32');


% Recuperar la resolución original (Sobremuestreo / Interpolación)
im_rec_1_4  = imresize(im_1_4, 4);
im_rec_1_8  = imresize(im_1_8, 8);
im_rec_1_16 = imresize(im_1_16, 16);
im_rec_1_32 = imresize(im_1_32, 32);

% Dibujar resultados del inciso B
figure(2);
sgtitle('Inciso B: "Recuperación" al tamaño original');
subplot(2,3,1); imshow(im); title('Original');
subplot(2,3,2); imshow(im_rec_1_4); title('Recuperada de 1/4');
subplot(2,3,3); imshow(im_rec_1_8); title('Recuperada de 1/8');
subplot(2,3,4); imshow(im_rec_1_16); title('Recuperada de 1/16');
subplot(2,3,5); imshow(im_rec_1_32); title('Recuperada de 1/32');

