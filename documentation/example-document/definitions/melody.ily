% Help for Frescobaldi
%%master: Heidenroeslein.ly

melody = \relative f' {
  \global
  \clef treble
  \autoBeamOff

  b8 b b b
  d16[ c] c[ b] a4
  a8 a b c
  d4 g8 r
  b,8 b b b 
  d16[ cis] cis[ b] a4
  d8 d e8. d16
  cis16[ d] e[ fis] d4
  d16[ fis] e[ d] cis[ b] ais[ b] 
  g'8.[ cis,16] d4\fermata
  a8^\markup \italic "nachgebend" a b c!
  d e16[ fis] g4\fermata
  e8^\markup \italic "wie oben" g c, e
  g,[ b16 a] g4 
  R2 * 2
}
