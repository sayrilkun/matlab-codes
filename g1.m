clc;
close all;
clear;

Fs2= 48000;
[Clean, Fs2] = audioread('audio.wav');
audiowrite('audio.wav',Clean,Fs2)
[sample_data, sample_rate] = audioread('audio.wav');

signal = medfilt1(sample_data,90); % Applying median filter
audiowrite('audio.wav',Clean,48000,'BitsPerSample',8);
info=audioinfo('audio.wav')

%_______________________________________________________________________________%
Fs = sample_rate;                       % Sampling Frequency (Hz)
Fn = Fs/2;                              % Nyquist Frequency (Hz)
Wp = 1000/Fn;                           % Passband Frequency (Normalised)
Ws = 1010/Fn;                           % Stopband Frequency (Normalised)
Rp =   1;                               % Passband Ripple (dB)
Rs = 150;                               % Stopband Ripple (dB)
[n,Ws] = cheb2ord(Wp,Ws,Rp,Rs);         % Filter Order
[z,p,k] = cheby2(n,Rs,Ws,'low');        % Filter Design
[soslp,glp] = zp2sos(z,p,k);            % Convert To Second-Order-Section For Stability
filtered_sound2 = filtfilt(soslp, glp, signal);
%_______________________________________________________________________________%
fs2_d = [filtered_sound2,filtered_sound2];

subplot(3,1,1);
plot(sample_data);            % Original Signal
title('Original Signal');
xlabel('Time (s)'); ylabel ('Amplitude');

hold on

subplot(3,1,2);
audiowrite('audio.wav',Clean, Fs2);  % Filtered output
plot(filtered_sound2,'b');
title('16 bit | 48kHz');
xlabel('Time (s)'); ylabel ('Amplitude');
ylim([-1 1])

hold on

subplot(3,1,3);
audiowrite('audio.wav',Clean, Fs2);  
noise=awgn(Clean,20);
plot(noise);
title('16 bit | 48kHz Noise');
xlabel('Time (s)'); ylabel ('Amplitude');
ylim([-1 1])
 
hold off