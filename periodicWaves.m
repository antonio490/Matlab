
%% Formas de onda periódicas %%

fs = 10000; 
t = 0:1/fs:1.5; 

x1 = sawtooth(2*pi*50*t); 
x2 = square(2*pi*50*t); 

% La función genera una onda cuadrada con un período de 2* pi.square Un parámetro opcional especifica el ciclo de trabajo, 
% el porcentaje del período durante el cual la señal es positiva. 

subplot(2,1,1) 
plot(t,x1) 
axis([0 0.2 -1.2 1.2]) 
xlabel('Time (sec)') 
ylabel('Amplitude')  
title('Sawtooth Periodic Wave') 

subplot(2,1,2) 
plot(t,x2) 
axis([0 0.2 -1.2 1.2]) 
xlabel('Time (sec)') 
ylabel('Amplitude') 
title('Square Periodic Wave')

%% Formas de onda aperiodicas %%

% La función tripuls genera un pulso triangular aperiódico, de altura de unidad centrado en aproximadamente t a 0 y 
% con una anchura predeterminada de 1.tripuls

% La función rectpuls genera un pulso rectangular aperiódico, de altura de unidad centrado en aproximadamente t a 0 
% y con una anchura predeterminada de 1.rectpuls Tenga en cuenta que el intervalo de amplitud no cero se define para 
% que esté abierto a la derecha, es decir, rectpuls(-0.5) a 1 mientras que rectpuls(0.5) a 0. 


fs = 10000; 
t = -1:1/fs:1; 

x1 = tripuls(t,20e-3); 
x2 = rectpuls(t,20e-3); 

subplot(2,1,1) 
plot(t,x1) 
axis([-0.1 0.1 -0.2 1.2]) 
xlabel('Time (sec)') 
ylabel('Amplitude') 
title('Triangular Aperiodic Pulse') 

subplot(2,1,2) 
plot(t,x2) 
axis([-0.1 0.1 -0.2 1.2]) 
xlabel('Time (sec)') 
ylabel('Amplitude') 
title('Rectangular Aperiodic Pulse')

% La función gauspuls genera un pulso sinusoidal modulado gausiano con un tiempo, una frecuencia central y 
% un ancho de banda fraccionario especificados.

% La función sinc calcula la función sinc matemática para un vector o matriz de entrada.sinc La función sinc es la transformación continua inversa de Fourier del pulso rectangular de ancho 2* pi y altura 1.

tc = gauspuls('cutoff',50e3,0.6,[],-40);  

t1 = -tc : 1e-6 : tc;  
y1 = gauspuls(t1,50e3,0.6);

t2 = linspace(-5,5); 
y2 = sinc(t2);

subplot(2,1,1) 
plot(t1*1e3,y1) 
xlabel('Time (ms)') 
ylabel('Amplitude') 
title('Gaussian Pulse') 

subplot(2,1,2) 
plot(t2,y2) 
xlabel('Time (sec)') 
ylabel('Amplitude') 
title('Sinc Function')







