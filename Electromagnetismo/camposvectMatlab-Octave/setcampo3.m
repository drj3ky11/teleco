function [X,Y,U,V,W]=setcampo3(a,b,c,i,j,k)
  %% Genera un grid de 3D
  %% Se toma el rango [a x b] e intervalo c
  [X,Y] = meshgrid(a:c:b,a:c:b);
  % Definimos las componentes direccionales de los vectores
  U = i*ones(size(X));
  V = j*ones(size(X));
  W = k*ones(size(X));
  % Para octave si se puede usar la siguiente línea: 
%endfunction
