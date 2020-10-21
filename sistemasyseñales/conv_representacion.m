function conv_jpm()
%% Función para ilustrar la convolución
x=[0,1,3,4,5,3,2,1,0];
h=[0,4,2,2,2,2,0,0,0,];
t=[0:1:(length(x)-1)];
% Creo un espacio de representación de 4x4
tiledlayout(4,4);
nexttile; % Ventana 1x1
hold on;
plot(t,x);
stem(t,x);
hold off;
title('Señal x');
nexttile;
hold on
plot(t,h);
stem(t,h);
hold off;
title('Señal h');

% El primer paso de la convolución es calcular h(-t):
h=fliplr(h);
nexttile;
hold on;
plot(t,h);
stem(t,h);
hold off;
title('h(-t)');
% Seguidamente la trasladamos al inicio de x
t1=t-length(x);
nexttile;
hold on;
plot(t1,h);
stem(t1,h);
hold off;
title('h(-t) desplazada');
% Representamos ambas señales juntas
nexttile([1 4]) % Ventana 1x4
hold on;
plot(t,x);
plot(t1,h);
stem(t,x);
stem(t1,h);
title('Señales colocadas antesd de convolución');
hold off;
pause(1);

% Represento el desplazamiento de h sobre x
nexttile([1 4])

for i=[0:length(x)]
    % Desplazo h sobre x hacia la derecha
    plot(t,x);
    grid on;
    hold on;
    stem(t,x);
    title('Animación de la convolución');
    t1=t1+i;
    plot(t1,h);
    stem(t1,h);
    hold off
    pause(0.5);
end

% Cálculo de la convolución y representación
c=conv(x,h);
t=[0:1:(length(c)-1)];
nexttile([1 4])
plot(t,c);
grid on;
title('Convolución x(t)*yh(t)');
