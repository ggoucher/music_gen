
#Starting off my musical code

tempo = 50
use_synth :hollow

cmaj = chord(:C4, :major)
dmaj = chord(:D4, :major)
emaj = chord(:E4, :major)
fmaj = chord(:F4, :major)
time = 0.6

use_bpm tempo
#pattern upward to introduce song
play_pattern_timed emaj, 1, attack: 2, release: 6
#our main musical loop
3.times do
  #the primary loop
  2.times do
    play invert_chord(chord(:E3, :major), 1), attack: 2, release: 6
    sleep(5)
    play emaj, attack: 2, release: 6
    sleep(5)
    play invert_chord(emaj, 1), attack: 2, release: 6
    sleep(5)
    
    play invert_chord(chord(:D3, :major), 1), attack: 2, release: 6
    sleep(5)
    play dmaj, attack: 2, release: 6
    sleep(5)
    play invert_chord(dmaj, 1), attack: 2, release: 6
    sleep(5)
  end
  
  #sequence up for surprise
  play chord(:E3, :major), attack: 2, release: 6
  sleep(5)
  play emaj, attack: 2, release: 6
  sleep(5)
  play invert_chord(emaj, 1), attack: 2, release: 6
  sleep(5)
  
  play chord(:F3, :major), attack: 2, release: 6
  sleep(5)
  play fmaj, attack: 2, release: 6
  sleep(5)
  play invert_chord(fmaj, 1), attack: 2, release: 6
  sleep(5)
end
#inverse pattern for the end of the song 
play_pattern_timed invert_chord(emaj, 1), 1, attack: 2, release: 8


