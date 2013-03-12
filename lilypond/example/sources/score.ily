\score {
  <<
    \new Voice = "mel" { 
        \set Staff.instrumentName = "Singstimme"
        \melody 
    }
    \new Lyrics \lyricsto mel \text
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Pianoforte"
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  % This \layout is just to ensure a pdf output.
  % Style modifications should be done in master file.
  \layout { }
  \midi { }
}