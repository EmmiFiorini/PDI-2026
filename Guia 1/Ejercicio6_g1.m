%punto 6 gui 1
clear; clc; close all;

info = dicominfo('Corte.dcm'); %leo la cabecera

im = dicomread('Corte.dcm'); %abro la imagen medica

figure(1);
imshow(im, []); %imprimo la imagen
title('Imagen DICOM Original');

imcontrast; %cambio el contraste