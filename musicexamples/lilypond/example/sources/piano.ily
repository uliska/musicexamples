% Help for Frescobaldi
%%master: Heidenroeslein.ly


upper = \relative d' {
  \global
  \clef treble
    
  r8 <d g b> r q | %1
  r8 <e a c> r q | %2
  r8 <d a' c> r <d fis a> | %3
  r8 <d g d'> r <d g b> | %4
  r8 <d g b> r q | %5
  r8 <e a cis> r q | %6
  r8 <a d> r <b e> | %7
  r8 <g cis> r <fis d'> | %8
  r8 <a d> r <b e> | %9
  r8 <g cis> r <fis d'>\fermata | %10
  r8 <fis a> r <d fis a> | %11
  r8 <d g d'> r <d g b>\fermata | %12
  r8 <e g c> r <c g' c> | %13
  <g' b>8( <fis a>) g16-. b( c d) | %14
  e8-. \appoggiatura e16 g8( c,-.) \appoggiatura c16 e8( | %15
  <<
    {
      g,^.) a16.( b32) g4
    }
    \new Voice {
      \voiceTwo
      g8 fis( g4)
    }
  >>
  \bar ":|"
}

lower = \relative c' {
  \global
  \clef bass
  
  g8 r8 g8 r8 | %1
  g8 r8 g8 r8 | %2
  fis8 r8 c8 r8 | %3
  b8 r8 g8 r8 | %4
  g'8 r8 g8 r8 | %5
  g8 r8 g8 r8 | %6
  fis8 r8 g8 r8 | %7
  a8 r8 b8 r8 | %8
  fis8 r8 g8 r8 | %9
  a8 r8 d,8 r8\fermata | %10
  d8 r8 c!8 r8 | %11
  b8 r8 g4\fermata | %12
  c8 r8 e8 r8 | %13
  <<
    {
      \voiceTwo
      d4( g16)
    }
    \new Voice {
      \voiceOne
      d'8( c) b16
    }
  >>
    \oneVoice
    g16( a b) | %14
  c8-. \acciaccatura c16 e8( a,-.) \acciaccatura a16 c8( | %15
  <d, b'>8-.) <d c'>( <g b>4)
}
