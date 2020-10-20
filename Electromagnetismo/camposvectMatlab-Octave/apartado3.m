function apartado3()
  %% Apartado 3, ejercicios propuestos AA1
  [X,Y,U,V]=setcampo(-3,3,0.2,1,1);
  f = (X.^2) + (X .* Y);
  [fx,fy] = gradient(f);
  fi3=figure('name', 'Apartado 3');
  figure(fi3);
  contour(X,Y,f);
  hold on;
  quiver(X,Y,fx,fy);
  hold off;
  % Para octave si se puede usar la siguiente línea: 
%endfunction
