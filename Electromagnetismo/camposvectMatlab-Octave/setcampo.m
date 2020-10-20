function [X,Y,U,V]=setcampo(a,b,c,i,j)
  %% Genera un grid de 2D
  %% Se toma el rango [a x b] e intervalo c
  [X,Y] = meshgrid(a:c:b,a:c:b);
  % Definimos las componentes direccionales de los vectores
  U = i*ones(size(X));
  V = j*ones(size(X));
  % Para octave si se puede usar la siguiente línea: 
%endfunction
