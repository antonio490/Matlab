
% Waveforms

subplot(2,1,1);
H = phased.RectangularWaveform('SampleRate',1e6,'PulseWidth',50e-6,'PRF',10e3);
plot(H);

subplot(2,1,2)
H = phased.LinearFMWaveform('SampleRate', 1e6, 'PulseWidth', 50e-6, 'PRF', 10e3);
plot(H)

