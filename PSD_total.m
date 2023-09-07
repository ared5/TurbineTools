% Parámetros de la señal
% fs = 1000; % Frecuencia de muestreo en Hz
% t = 0:1/fs:1; % Vector de tiempo de 0 a 1 segundo con paso de 1/fs
% f0 = 200; % Frecuencia de la señal en Hz
% amplitud = 1; % Amplitud de la señal
% 
% % Generación de una señal sinusoidal como ejemplo
% senal = amplitud * sin(2 * pi * f0 * t);

% Parámetros de la señal
fs = 1000; % Frecuencia de muestreo en Hz
t = 0:1/fs:1; % Vector de tiempo de 0 a 1 segundo con paso de 1/fs
num_componentes = 1; % Número de componentes sinusoidales

% Frecuencias y amplitudes aleatorias
frecuencias = randi([1, 100], 1, num_componentes); % Frecuencias aleatorias entre 1 Hz y 100 Hz
amplitudes = rand(1, num_componentes); % Amplitudes aleatorias entre 0 y 1

% Creación de la señal con componentes aleatorios
senal = zeros(size(t)); % Inicializa la señal

for i = 1:num_componentes
    senal = senal + amplitudes(i) * sin(2 * pi * frecuencias(i) * t);
end

% Cálculo del PSD utilizando pwelch
nfft = 256; % Tamaño de la ventana para el cálculo de la PSD
noverlap = 128; % Solapamiento entre segmentos
[Pxx, f] = pwelch(senal, hamming(nfft), noverlap, nfft, fs);

% Visualización en un mismo gráfico
figure;

% Señal en el dominio del tiempo
subplot(3, 1, 1);
plot(t, senal);
title('Señal en el Dominio del Tiempo');
xlabel('Tiempo (s)');
ylabel('Amplitud');

% PSD en un gráfico de colores
subplot(3, 1, 2);
colormap('jet'); % Establece el mapa de colores (puedes cambiarlo según tus preferencias)
spectrogram(senal, hamming(nfft), noverlap, nfft, fs, 'yaxis');
title('Espectrograma y PSD (Gráfico de Colores)');
xlabel('Tiempo (s)');
ylabel('Frecuencia (Hz)');
colorbar; % Agrega una barra de colores para indicar la intensidad

% PSD en un gráfico lineal
subplot(3, 1, 3);
plot(f, 10*log10(Pxx));
title('Densidad Espectral de Potencia (PSD)');
xlabel('Frecuencia (Hz)');
ylabel('PSD (dB/Hz)');
grid on;

% Ajusta los límites del eje x para una mejor visualización
xlim([0, fs/2]);

% Imprime el valor máximo de PSD y su frecuencia correspondiente
[max_PSD, idx_max_PSD] = max(Pxx);
fprintf('Máxima PSD: %.2f dB/Hz a %.2f Hz\n', 10*log10(max_PSD), f(idx_max_PSD));