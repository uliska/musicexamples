\version "2.17.4"
\language "deutsch"

pianoDown = \relative ces' {
  \globals
  \clef bass
  ces8-._>[ | 
  as8-.] r r \clef treble 
  as'-.^>[ f-.] d-.^>[ | %1
  <b d>-.] \clef bass ces,-.^>[ b-.] r r ces-.->[ | %4
  as-.] r r as'-.->[ f-.] \voiceTwo d-.->[ | %3
  <b d>-.] ces,-.->[ b-.] r r\fermata \oneVoice ces''-.[\pp |%4
  as8-.] r r \clef treble as'-.[ f-.] d^>-.[ | %5
  <b d>-.] \clef bass ces,-.[ b-.] r r4 | %6
  es8_( c b2)_( | %7
  es8) fis-.[ g-.] r r 
    \discuss Flag "Kein Balken (innerhalb der Zeile!)"
    ces^._> | %8
  as8-. r r \clef treble as'^>_.[ f-.] d-.[ | %9
  <b d>8-.] \clef bass ces,-.->[ b-.] r r4 | %10
  es8( d c g' as f) | %11
  fis2.( | %12
  g8) as^._>[ g-.] r r <h d>-.[ | %13
  <d f>^._>] as-.[ g-.] r r <h d>-.[ | %14
  <d f>^._>] as-.[ g-.] r r <h d>-.[ | %15
  <d f>8^._>] as-.[ g-.] r r <h d>-.[ | %16
  d^._>] fis,-.[ d-.]  r r <fis c' d>-.[ | %17
  <g h d>^._>] as-.[ g-.] r r \clef treble <d' f>-.[ | %18
  <f as>^._>] ces-.[ b-.] r r <d f>-.[ | %19
  <f as>^._>] ces-.[ b-.] d-.[ es-.] r | %20
  r8 \clef bass es( ces b a <ces es>) | %21
  <b d>-.[ <ces es>-.] <b d>-. <ces es>-. <b d>-. <ces es>-. | %22
  <b d>-.[ <ces es>-.] <b d>-.[ <ces es>-.] <b d>-.[ <ces es>-.] | %23
  <b d>8-. r r4 
    \comment Rest "Möglicherweise Rasur"
    % Kann man das genauer klären (Repro, Krit.Ber.)?
    r8 ces-.->[ | %24
  as8-.] r r 
    \comment NoteHead "Möglicherweise Staccato-pkt oberhalb der ces-Oktave"
    % Es ist nicht ganz klar, ob oberhalb der ces-Oktave ein Punkt steht.
    % Wahrscheinlich ist das der Punkt des "cresc."
    <ces, ces'>_>[ <as as'>] <b b'> | %25
  <ges ges'>-. <f f'>-. <es es'>-. <b' b'>-. <as as'>-. <ges ges'>-. | %26
  <f f'>-. <es es'>-. <des des'>-. <ces ces'>-. b'-. ces-. | %27
  b-. ces-. des-. ces-. b-. as-. | %28
  b8 r b r b r | %29
  es8 r \SSUp <b' es ges> r <b d f> r | %30
  <es ges> \SDn \oneVoice b^._>[ ges-.] r r <b, b'>^> | %31
  <ges ges'>-. <f f'>-. <es es'>-. <b' b'>-. <as as'>-. <ges ges'>-. | %32
  <f f'>-. <es es'>-. <des des'>-. <ces ces'>-. b'-. ces-. | %33
  \voiceTwo as-. f-. d-. ces-. b-. <as as'>-. | %34
  <g g'>2 q4 | %35
  <as as'>2 \oneVoice r4 | %36
  r4 <b' es g>8 r 
    <<
      {
        \voiceOne
        <d b'>8_( <f as>) | %37
        <f as>4( <es g>)
      }
      \\
      \new Voice {
        \voiceTwo
        b4 | %37
        c2
      }
    >>
    \oneVoice r4 | %38
  \voiceTwo
  <g, g'>2 q4 | %39
  <as as'>2 \oneVoice r4 | %40
  r4 <b' es g>8 r <b es ges> r | %41
  r4 <b es f>8 r <b d f> r | %42
  <es, es'>8 fes'-.[ es-.] r r <g b>-.[ | %43
  <b des>-.] fes-.[ es-.] r r <g b>-.[ | %44
  <b des>-.] \SSUp 
    \comment Slur "Bg. evtl. bis zur 1 des nächsten T. (dort aber kein Punkt)"
    g'(-. g-. g-. g-. g-.) | %45
  g \SDn
    <<
      {
        \voiceOne
        es,\noBeam es2 | %46
      }
      \\
      \new Voice {
        \voiceTwo
        g,8 as2 | %46
      }
    >>
    \oneVoice
    <es es'>2._\fermata %47
}