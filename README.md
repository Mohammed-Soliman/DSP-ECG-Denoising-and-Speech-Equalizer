# DSP-ECG-Denoising-and-Speech-Equalizer
This project implements two Digital Signal Processing applications: an ECG signal denoising pipeline for telemedicine applications and a multi-band speech equalizer for podcast and voice recording enhancement. Both systems were designed, implemented, and validated in MATLAB.

Course: CIE 247 – Digital Signal Processing  
Institution: Zewail City of Science and Technology  
Semester: Spring 2026 

---

## 🚀 Project Overview
The project covers two independent DSP pipelines, each contributing equally to the overall work:
- ECG denoising using cascaded notch and low-pass filtering
- Multi-band speech equalization using FIR filters with adjustable per-band gain
- Frequency-domain and time-domain validation (PSD, spectrograms, magnitude/phase responses)
- Multi-rate analysis through upsampling and downsampling of audio signals

---

## ❤️ Part 1: ECG Signal Denoising
ECG recordings from the **MIT-BIH Arrhythmia Database** (PhysioNet) were used to validate the denoising pipeline on both normal and abnormal rhythms:
- **Record 100** – primarily normal sinus rhythm
- **Record 106** – abnormal rhythm with ventricular ectopic beats

### Noise Sources Targeted
- Power-line interference at 50 Hz
- High-frequency electromyographic (EMG) muscle noise

### Filter Design
- A second-order **IIR notch filter** at 50 Hz removes power-line interference with minimal distortion to adjacent frequencies.
- A linear-phase **FIR low-pass filter** with a 100 Hz cutoff suppresses residual muscle noise.

### Validation
- Magnitude and phase response plots for each filter
- Time-domain comparison of original vs. fully denoised signals for both records
- Power Spectral Density (PSD) comparison confirming attenuation at 50 Hz while preserving the diagnostic frequency band

---

## 🎙️ Part 2: Multi-Band Speech Equalizer
A three-band **FIR equalizer** designed using the **Hamming window** method provides independent gain control over speech-relevant frequency bands:
- Band 1: 0–100 Hz
- Band 2: 100–300 Hz
- Band 3: 300–800 Hz

### Multi-Rate Analysis
The input audio (originally 22,050 Hz) was also processed at:
- 4× upsampled rate (88,200 Hz)
- Half rate (11,025 Hz)

This demonstrates the relationship between sampling rate, signal bandwidth, and filter behavior.

### Filter Design and Analysis
For each band, the following were generated:
- Magnitude response
- Phase response
- Impulse response
- Step response
- Pole-zero plot

All filters are order-100 FIR filters, exhibiting linear phase and therefore zero phase distortion.

### Validation
- Time-domain and frequency-domain comparison of original vs. processed signals
- Power Spectral Density (PSD) confirming band-selective gain redistribution
- Spectrograms (original and processed) showing the reshaping of harmonic content after equalization

---

## 📂 Repository Contents
- MATLAB source code (well-commented) for both pipelines
- PDF project report including problem formulation, filter specifications, design procedures, all plots, and discussion
- Data files used for ECG and audio processing

---

## 👨‍💻 Author(s)
- Mohamed Salah
- Mohammed Soliman

---

## 📚 References
- Proakis, J. G., & Manolakis, D. G. (2006). *Digital Signal Processing: Principles, Algorithms, and Applications* (4th ed.). Prentice Hall.
- PhysioNet. MIT-BIH Arrhythmia Database. https://physionet.org/content/mitdb/
- MathWorks MATLAB Signal Processing Toolbox Documentation.
- Oppenheim, A. V., & Schafer, R. W. (2009). *Discrete-Time Signal Processing* (3rd ed.). Prentice Hall.

---

## 📌 Key Takeaway
This project demonstrates practical application of core DSP concepts including:
- FIR filter design using windowing methods (Hamming)
- IIR notch filtering for narrowband interference rejection
- Multi-band signal decomposition and gain-based recombination
- Frequency-domain validation using PSD (Welch method) and spectrograms
- Multi-rate signal processing through upsampling and downsampling

The system effectively applies digital filter design techniques to real-world biomedical (ECG) and audio (speech) signal processing problems.