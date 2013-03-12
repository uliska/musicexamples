\version "2.17.4"
\language "deutsch"

pianoUp = \relative f'' {
  \globals
  r8 |
  r8 f-._>[ d-.] r r <f, as ces>-.^>[ | %1
  <f as b>8-.] r r <a, es' ges>-.^>[ <b d f>-.] r | %2
  r8 f'-.->[ d-.] r r 
    \SSDn
    <f, as ces>-.->[ | %3
  <f as b>-.] r r <a, es' ges>-.->[ <b d f>-.]\fermata 
    \SUp \oneVoice
    r8 | %4
  r8 f'''-._>[ d-.] r r <f, as ces>^>_.[ | %5
  <f as b>-.] r r <a, es' ges>^>_.[ <b d f>-.] r | %6
  <<
    { 
      \oneVoice 
      r8 \voiceOne <a' es'~> <b es>4( d)( | %7
      es8) }
    \\
    \new Voice {
      s8 \voiceTwo f,( g[ as b8.->) as16] |
      g8
    } 
  >> \oneVoice r r a-.[ b-.] r | %8
  r8 f'-.[ d-.] r r <f, as ces>-.[ | %9
  <f as b>-.] r r <a, es' ges>-.[ <b d f>-.] r | %10
  <g' g'!>8( <h f'> <c es> <f, d'> <es c'> f) | %11
  fis2.( | %12
  g8) r r as'^._>[ g-.] <h, d>-.[ | %12
  <d f>8^._>] r r as'-.[ g-.] <h, d>-.[ | %13
  <d f>8^._>] r r as'-.[ g-.] <h, d>-.[ | %14
  <d f>-.] r r as'-.[ g-.] <h, d>-.[ | %15
  <c d>-.] r r a'-.[ d,-.] <c d>-.[ | %16
  <h d>-.] r r as'-.[ g-.] <d f>-.[ | %17
  <f as>-.] r r ces'-.[ b-.] <d, f>-.[ | %18
  <f as>8-.] r r <ces f as>-.[ <b es ges>-.] r | %19
  r8 
    \comment Slur "Ende des Bogens ist unklar. Im Text kommentiert"
    es( ces b a) <a f'> | %20
  <b f'>-.[ <a f'>-.] 
    % TODO: Die Bebalkung ist im Ms. durch Brillennotation angedeutet.
    % Es ist unklar, ob das wirklich so gemeint ist oder doch so wie in OA
    <b f'>-.[ <a f'>-. <b f'>-. <a f'>-.] | %21
  \repeat unfold 3 { 
      \discuss Beam "Genaue Balkensetzung im Ms. prüfen"
      % Die genaue Bebalkung ist in meiner Reproduktion nicht genau zu erkennen.
      % Drei Gruppen durch Prozent-Wdh. angedeutet. Könnte aber auch als ein
      % Balken über den ganzen Takt verstanden werden.
      b16[ f' a, f'] } | %22
  <b, f'>8-. r r4 r | %23
  r8 ces-.->[ as-.] r r 
    \once \override DynamicText #'extra-offset =  #'(-2.5 . 4)
    \comment DynamicText "Zuordnung des 'f' unklar"
    \comment Script "Zuordnung des Akzents unklar"
    % Die Zuordnung des "f" ist etwas unklar
    % (könnte auch als allg. Dynamik gelesen werden).
    % Ebenso ist unklar, ob der Akzent zur r. oder l.H. gehört.
    b_._>\f | %24
  r16 ges[ r f r es r b' r as r ges] | %25
  r16 f[ r es r des r ces r b r ces] | %26
  r16 b[ r ces r des r ces r b r as] | %27
  b8 r <b es ges> r <b d f> r | %28
  <b es ges>8 r16 \voiceOne b''16( ges8.) b16( f8.) b16( | %29
  ges8) \oneVoice r r ces,-.^>[ as-.] 
    \once \override DynamicText #'extra-offset =  #'(-2.3 . 3)
    b-.\f | %30
  r16 ges[ r f r es r b' r as r ges] | %31
  r16 f[ r es r des r ces r b r ces] | %32
  \SSDn r16 as[ r f r d r ces r b] \SUp \oneVoice r 
    <<
    {
      \voiceOne
      d'16 | %33
      \comment NoteHead "Polyphon oder akkordisch gedacht? (auch T. 39)"
      % Es ist unklar, ob diese Polyphonie so gedacht ist.
      % Im Ms. hat jede Note einen eigenen Hals,
      % doch scheint eine akkordische Lesart sinnvoller.
      es2 es4 | %34
      es2-> 
    }
    \\
    \new Voice {
      \SSDn
      \crossStaff { <f, b>16 } | %33
      b2 h4 | %34
      h4( c) 
    }
    \\
    \new Voice {
      \SDn
      \voiceThree
      s16 | %33
      es,2  es4 | %34
      es2
    }
    >>    
      \SUp \oneVoice r4 | %35
  r4 <b' es g>8 r <d b'>( <f as>) | %36
  <f as>4( <es g>) r | %37
  <<
    {
      \voiceOne
      es2 es4^\< | %38
      <h d f>4(\> <c es>)\!
    }
    \\
    \new Voice {
      \SSDn
      b2 h4 | %38
      s2
    }
    \\
    \new Voice {
      \SDn
      \voiceThree
      es,2 es4 | %38
      \crossStaff { f4_( es) }
    }
  >>
  \SUp
  \oneVoice
  r4 | %39
  r4 <b' es g>8 r <b es ges> r | %40
  r4 <b es f>8 r <b d f> r | %41
  <g b es>8 r r fes''-._>[ es-.] <g, b>-.[ | %42
  <b des>-.->] r r fes'^._>[ es-.] <g, b>-.[ | %43
  <b des>-.->] 
    \voiceOne 
    \dynamicUp
    <b des fes>\fp-.\>( <b des es>-. <b des fes>-. <b des es>-.\! <b des fes>-.) | %44
  <b des es>
    <<
      { 
        \voiceOne
        es,8 es2-> | %45
      }
      \\
      \new Voice {
        \voiceTwo
        <b des>8 <b des>4( as4)
      }
      \new Voice {
        \voiceTwo
        s8 \hideVoiceForTie des4^( \voiceThree c8)( ces)
      }
    >>
   \oneVoice
   <g b es>2.\fermata
      
  
}

