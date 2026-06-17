Add-Type -AssemblyName System.Speech
$synth = New-Object System.Speech.Synthesis.SpeechSynthesizer
$synth.Rate = 0
$synth.SetOutputToWaveFile("C:\Users\SDS Scholar\Desktop\Speech Equalizer\podcast_original.wav")
$text = "Welcome to the CIE 237 digital communications podcast. Today we explore how matched filters recover signals from noise. The matched filter maximizes signal to noise ratio at the sampling instant. Higher order PAM like 16 PAM sends more bits per symbol but requires more power. This is the fundamental tradeoff in digital communications."
$synth.Speak($text)
$synth.Dispose()
Write-Host "Speech audio generated successfully."
