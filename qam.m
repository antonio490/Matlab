
%% QAM

% Modulation order 
M = 16;
x = (0:M-1)';

% modulate the data using qam
y = qammod(x,M);

scatterplot(y)

%% QAM 256

M = 256;
x = (0:M-1)';
y = qammod(x,M);
scatterplot(y)

%% QAM with bit input

% Modulate a sequence of bits using 64-QAM. Pass the signal through a noisy channel. 
% Display the resultant constellation diagram.
% Set the modulation order, and determine the number of bits per symbol.
 
M = 64;
k = log2(M);

% create binary data sequence
data = randi([0 1],1000*k,1);

% modulate the signal using bit inputs
txSig = qammod(data,M,'InputType','bit','UnitAveragePower',true);

% pass the signal through a noise channel
rxSig = awgn(txSig,25);

% Plot the constellation diagram
cd = comm.ConstellationDiagram('ShowReferenceConstellation',false);
cd(rxSig)



