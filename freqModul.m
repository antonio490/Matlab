% Frecuency modulation

% Frecuencia de muestreo 1kHz
% Frecuencia de la portadora 200 Hz. 
% Duracion de 0.2 s.
% Frecuencia de desviación
% Signal noise ratio

fs = 1000; 
fc = 200;  
t = (0:1/fs:0.2)';
fDev = 50;
snr = 10e-1;

% Cramos dos tonos con frecuencias de 30 y 60 Hz.
x = sin(2*pi*30*t)+2*sin(2*pi*60*t);

% Modulacion señal x
y = fmmod(x,fc,fs, fDev);

subplot(2,1,1)
plot(t,x,'c',t,y,'b--')
xlabel('Tiempo (s)')
ylabel('Amplitud')
legend('Señal Original','Señal Modulada')

% Ruido Blanco Gaussiano
yn = awgn(y,snr,'measured');

% Demodulacion señal y
z = fmdemod(yn,fc,fs,fDev);

subplot(2,1,2)
plot(t,x,'c',t,z,'b--');
xlabel('Tiempo (s)')
ylabel('Amplitud')
legend('Señal Original','Señal Demodulada')