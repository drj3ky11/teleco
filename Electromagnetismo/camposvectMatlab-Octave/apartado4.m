function apartado4()
  %% Apartado 4, ejercicios propuestos AA1
  [X,Y,U,V]=setcampo(-3,3,0.2,1,1);
  f = (Y.^2) - (X .^2);
  [fx,fy] = gradient(f);
  fi4=figure('name', 'Apartado 4');
  figure(fi4);
  contour(X,Y,f);
  hold on;
  quiver(X,Y,fx,fy);
  % Defino las 20 líneas de contorno
  % Para Octave comentar las siguientes tres líneas
  startx = -3:0.3:3;
  starty = -3:0.3:3;
  streamline(X,Y,fx,fy,startx,starty)
  hold off;
% Para octave si se puede usar la siguiente línea:  
%endfunction
