%% Baseband transmission with addtive white noise

% Generation of a signal bpsk modulation
% This takes a set of random numbers and converts them to bits 0's & 1's
% The 2*X-1 will create -1's in place of the 0's from the bit conversion.

signal_i = 2*(rand(1,10^5)>0.5)-1;
signal_q = zeros(1,10^5);

scatterplot(signal_i + signal_q);


% Combining for complex representation

signal = complex(signal_i, signal_q);
p_signal = mean(abs(signal).^2);
e_signal = (abs(signal).^2);

% Adding some noise of a known variance

for var = 1/50:1/10:0.5
    noise = 1/sqrt(2)*(randn(1,10^5)+1i*randn(1,10^5))*sqrt(var);
      addNoise = signal + noise;
      figure(1);
      plot(real(addNoise),imag(addNoise),'b*');
      drawnow('expose');
end
