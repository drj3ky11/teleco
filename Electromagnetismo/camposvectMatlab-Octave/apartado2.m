function apartado2()
  %% Apartado 2, ejercicios propuestos AA1

  fig1=figure('name', 'Apartado 2');
  figure(fig1);
  
 % a) F(x,y)= yî - xĵ en el cuadrado D=[−2,2]×[−2,2].
  [X,Y,U,V]=setcampo(-2,2,0.2,1,-1);
  subplot(1,2,1);
  drawcampo(X,Y,U,V);
  title('F(x,y)= yî - xĵ')
  
  % b) F(x,y)= zî + xĵ + yk en el plano x+2y−z= 0.
  [X,Y,U,V,W]=setcampo3(-2,2,0.2,1,1,1);
  f2 = X + 2*Y;
  subplot(1,2,2);
  drawcampo3(f2,X,Y,U,V,W);
  title('F(x,y)= zî + xĵ + yk')
  % Para octave si se puede usar la siguiente línea: 
%endfunction
