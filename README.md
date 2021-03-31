# Matlab

## Power spectral density

The power spectrum S_{xx}(f) {\displaystyle S_{xx}(f)} S_{{xx}}(f) of a time series x(t) {\displaystyle x(t)} x(t) describes the distribution of power into frequency components composing that signal. According to Fourier analysis, any physical signal can be decomposed into a number of discrete frequencies, or a spectrum of frequencies over a continuous range. The statistical average of a certain signal or sort of signal (including noise) as analyzed in terms of its frequency content, is called its spectrum. 

## Baseband pulse transmission

Digital data have a broad spectrum with a significant low frequency content. Baseband transmission of digital data threfore requires the use of a low-pass channel with a bandwidth lanrge enough to accomodate the essential frequency content of the data stream. However, the channel is dispersive in that its frecuencies response deviates from that of an ideal los-pass filter. The result of data transmission over such a channel is that each recived pulse is affected somewhat by adjacent pulses, threby giving rise to a common form of interference called intersymbol interference (ISI). Intersymbol interference is a major source of bit errors in the reconstructed data stream at the receiver output. Another source of bit errors in a baseband data transmission system is the ubiquitous channel noise. The device for the optimum detection of a such a pulse involves the use of a linear-time-invariant filter known as matched filter, which is so called because of its impulse response is matched to the pulse signal.

A basic problem that often arises in the study of communication systems is that of detecting a pulse transmitted over a channel that is corrupted by channel noise.  

### Matched Filter

The requirement is to specify the impulse reponse h(t) of the filter such that the output signal-to-noise ratio is maximized in equation:

```math
\eta = \frac{\left | g_{0}\left ( T \right ) \right |^{2}}{E\left [ n^{2}\left ( t \right ) \right ]}$
```

The impulse response of the optimum filter, except for scaling factor k, is a time-reversed and delayed version of the input signal g(t); It is matched to the input signal. A linear time-invarient filter defined in this way is called a matched filter.

### Intersymbol Interference (ISI)

The next source of bit error in a baseband-pulse transmission system is the intersymbol interference, which arises when the communication channel is * dispersive *.

How do we transmit data in M-ary form? The answer lies in the use of discrete pulse modulation, in which the amplitud, duration, or position of the transmitted pulses is varied in a discrete manner in accordance with the given data stream.
Discrete pulse amplitude modulation (PAM) is one of the most efficient schemes in terms of power and bandwidth utilization. The pulse amplitude modulator modifies this binary sequence into a new sequence of short pulses, whose amplitude $a_{k}$ is represented in the polar form.


## QAM

In any event, “in-phase” and “quadrature” refer to two sinusoids that have the same frequency and are 90° out of phase. By convention, the I signal is a cosine waveform, and the Q signal is a sine waveform. As you know, a sine wave (without any additional phase) is shifted by 90° relative to a cosine wave. Another way to express this is that the sine and cosine waves are in quadrature.

The first thing to understand about I/Q signals is that they are always amplitude-modulated, not frequency- or phase-modulated.

- I/Q signaling refers to the use of two sinusoids that have the same frequency and a relative phase shift of 90°.
- Amplitude, phase, and frequency modulation can be performed by summing amplitude-modulated I/Q signals.
- Quadrature modulation refers to modulation that involves I/Q signals.
- Quadrature phase shift keying can be accomplished by adding I and Q carriers that have been individually multiplied, in   accordance with the incoming digital data, by +1 or –1.

## Sources

<b>Communication systems</b> - Simon Haykin

