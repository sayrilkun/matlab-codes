[Y,Fs] = audioread('audio.wav');
audiowrite('audio.wav', Y, Fs,'BitsPerSample',16);
info = audioinfo('audio.wav')
sound(Y,Fs,16)

soundsc(01,48000)
subplot(2,1,1)
plot(y)

soundsc(02,48000)
subplot(2,1,1)
plot(y)

soundsc(03,48000)
subplot(2,1,1)
plot(y)

soundsc(04,32000)
subplot(2,1,2)
plot(y)

soundsc(05,32000)
subplot(2,1,2)
plot(y)

soundsc(06,32000)
subplot(2,1,2)
plot(y)

soundsc(07,16000)
subplot(2,1,1)
plot(y)

soundsc(08,16000)
subplot(2,1,1)
plot(y)

soundsc(09,16000)
subplot(2,1,1)
plot(y)

soundsc(10,8000)
subplot(2,1,2)
plot(y)

soundsc(11,8000)
subplot(2,1,2)
plot(y)

soundsc(12,8000)
subplot(2,1,2)
plot(y)

left=y(:,1);
fs2=Fs/2
fs3=2*Fs
time=(1/44100)*length(left);
t=linspace(0,time,length(left));
plot(t,left)
xlabel('time (sec)');
ylabel('relative signal strength')
soundsc(left,fs3)
nr=12;
disp(['number of levels = ' num2str(nr)])
delt = 2/nr;

filename = 'audio.wav';
[y,Fs] = audioread(filename);
y=y(:,1);
v=max(max(y),-min(y));
y=y/v*0.9999999;

figure(1)
plot(y)
sound(Y,Fs)

figure(2)
plot(y)
sound(Y,Fs)

b=8;                            % Number of bits.
N=12;                          % Number of samples in final signal.
n=0:(N-1);                 %Index
