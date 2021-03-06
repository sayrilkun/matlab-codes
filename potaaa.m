[Y, Fs2] = audioread('audio.wav');
audiowrite('audio.wav',Y,Fs2)

[sample_data, sample_rate] = audioread('audio.wav');
audiowrite('audio.wav',sample_data, sample_rate);

a=resample(Y,1,6);

signal = medfilt1(sample_data,90); % Applying median filter
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
z = [filtered_sound2,filtered_sound2];
R = 10;
B = 4;
x = length('audio.wav');
y = adc_uni(x,R,B);

subplot(3,1,1);
plot(sample_data);         
title('Original Signal');
xlabel('Time (s)'); ylabel ('Amplitude');

hold on

subplot(3,1,2);
audiowrite('audio.wav',Y,16000)
plot(z,'b'); 
title('4 bit | 8kHz');
xlabel('Time (s)'); ylabel ('Amplitude');
ylim([-2.5 2.5])
xlim([0 5e4])

hold on

subplot(3,1,3);
audiowrite('audio.wav',Y,16000);  
plot(filtered_sound2);
title('4 bit | 8kHz Noise');
xlabel('Time (s)'); ylabel ('Amplitude');
ylim([-2.5 2.5])
xlim([0 5e4])

hold off