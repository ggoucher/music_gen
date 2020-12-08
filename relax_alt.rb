
#Starting off my musical code

tempo = 50
use_synth :hollow

cmaj = chord(:C4, :major)
dmaj = chord(:D4, :major)
emaj = chord(:E4, :major)
fmaj = chord(:F4, :major)
time = 0.6

use_bpm tempo
play_pattern_timed emaj, 1, attack: 2, release: 6
2.times do
  2.times do
    play invert_chord(chord(:E3, :major), 1), attack: 2, release: 6
    sleep(5)
    play emaj, attack: 2, release: 6
    sleep(5)
    play invert_chord(emaj, 1), attack: 2, release: 6
    sleep(5)
    ##| play chord(:E3, :major), attack: 2, release: 6
    ##| sleep(5)
    ##| play invert_chord(chord(:E3, :major), 1), attack: 2, release: 6
    sleep(5)
    tempo -= 1
    
    play invert_chord(chord(:D3, :major), 1), attack: 2, release: 6
    sleep(5)
    play dmaj, attack: 2, release: 6
    sleep(5)
    play invert_chord(dmaj, 1), attack: 2, release: 6
    sleep(5)
    ##| play chord(:D3, :major), attack: 2, release: 6
    ##| sleep(5)
    ##| play invert_chord(chord(:D3, :major), 1), attack: 2, release: 6
    sleep(5)
  end
  
  #sequence up for surprise
  play emaj, attack: 2, release: 6
  sleep(5)
  play invert_chord(emaj, 1), attack: 2, release: 6
  sleep(5)
  play chord(:E3, :major), attack: 2, release: 6
  sleep(5)
  play invert_chord(chord(:E3, :major), 1), attack: 2, release: 6
  sleep(5)
  ##| tempo -= 1
  
  play fmaj, attack: 2, release: 6
  sleep(5)
  play invert_chord(fmaj, 1), attack: 2, release: 6
  sleep(5)
  play chord(:F3, :major), attack: 2, release: 6
  sleep(5)
  play invert_chord(chord(:F3, :major), 1), attack: 2, release: 6
  sleep(5)
end
play_pattern_timed invert_chord(emaj, 1), 1, attack: 2, release: 8


