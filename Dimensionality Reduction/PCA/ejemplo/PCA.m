%% Ejemplo de PCA
clear all; clc

X = rand(10,20); % La se�al de 5 canales R(NxP).

% Paso 1. Centralizamos la se�al.
Xm = mean(X,2);
X_ = X-Xm;

% Paso 2. Matriz de correlaci�n
R = X_'*X_;

% Paso 3. Matriz de covarianza.
S = (1/size(X_,1))*R;

% Paso 4. Se puede hacer descomposici�n en valores singulares (SVD)
