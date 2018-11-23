%MATLAB Introduction Course
%Example 2 - Audio Frequency
%Audio signals are usually composed by several different frequencies.

%Sampling frequency
fs = 10;
%Number of times that a signal has been sampled
t = 0:1/fs:20;
%Amplitude of the signal
y = sin(1.8*2*pi*t)+sin(2.1*2*pi*t);


%Fourier transform provides information about the content of the frequencies in a signal
yfft = fft(y);
%Number of elements in an array
n=numel(y);
%Frequencies that correspond to values in yfft
f = 0:fs/n:fs*(n-1)/n;

%Plots
subplot(2,1,1);
plot(t,y)
title('Audio Signal')

subplot(2,1,2);
plot(f,abs(yfft))
title('Fourier Transform')
