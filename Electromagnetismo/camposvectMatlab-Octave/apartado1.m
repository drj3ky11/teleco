function apartado1()
  
  %% Apartado 1, ejercicios propuestos AA1
 
  %% Representación
  fig1=figure('name', 'Apartado 1');
  figure(fig1)
  % Apartado 1.a)
  subplot(2,2,1);
  [X,Y,U,V]=setcampo(-2,2,0.2,1,0);
  drawcampo(X,Y,U,V);
  title('F(x,y)=xî')
  % Apartado 1.b)
  subplot(2,2,2);
  [X,Y,U,V]=setcampo(-2,2,0.2,0,1);
  drawcampo(X,Y,U,V);
  title('F(x,y)=yĵ')
  % Apartado 1.c)
  subplot(2,2,3);
  [X,Y,U,V]=setcampo(-2,2,0.2,1,1);
  drawcampo(X,Y,U,V);
  title('F(x,y)=xî+yĵ')
  % Apartado 1.d)
  subplot(2,2,4);
  [X,Y,U,V]=setcampo(-2,2,0.2,1,2);
  drawcampo(X,Y,(U.^2),V);
  title('F(x,y)=x^2î+2yĵ')
% Para octave si se puede usar la siguiente línea:   
%endfunction
