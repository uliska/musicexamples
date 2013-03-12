\version "2.17.4"
\language "deutsch"

vocals = \relative ces'' {
  \globals
  \autoBeamOff
  \override TupletBracket #'stencil = ##f
  r8 | 
  R2.*3 | % 1-3
  r4 r r8\fermata r | %4
  ces8 as ces4. as8 | %5
  f8 a b4. as8 | %6
  g8 f es f g8. f16 | %7
  es4 r r | %8
  
  ces'8 as ces4. as8 | %9
  f8 a b4. as8 | %10
  g4. h8 c f, | %11
  fis2 fis4 | %12
  g4 r r | %13
  r4 r h8 h | %14
  h4. h8 h h | %15
  d4 h \times 2/3 {h8[ c] d} | %16
  d4. c8 a d | %17
  h4 r d8 d | %18
  f4. f8 f f | %19
  \appoggiatura es16 d8 d r4 es8 des | %20
  ces4. b8 a es' | %21
  d4 r r | %22
  R2.*3 | %23-25
  b8 b es4. ges,8 | %26
  as8 b ces ces, r4 | %27
  R2. | %28
  b8.^\markup "etwas langsamer" 
    es16 ges8. b16 f8. b16 | %29
  ges4 r4 r | %30
  R2.^\markup "a tempo" | %31
  es'8 f ges4. ges,8 | %32
  f es des ces r4 | %33
  R2. | %34
  b'4(es4. d8) |%35
d4( c) r8 as | %36
  g4. b8 \times 2/3 {f8[ b] as } | %37
  as4( g) r | %38
  b4( g'4. es8) | %39
  h4( c) r8 as | %40
  g2 b4 | %41
  f4( ces'4.) b8 | %42
  es,2 r4 | %43
  R2.*3 | %44-46
  R2.\fermataMarkup
  \bar "|."
  
}

vocalText = \lyricmode {
  Hie und da ist an den Bäu -- men
  man -- ches bun -- te Blatt zu sehn,
  und ich blei -- be vor den Bäu -- men
  oft -- mals in Ge -- dan -- ken stehn.
  
  Schau -- e nach dem ei -- nen Blat -- te,
  hän -- ge mei -- ne Hoff -- nung dran,
  spielt der Wind mit mei -- nem Blat -- te, 
  zittr' ich, was ich zit -- tern kann.
  
  Ach, und fällt das Blatt zu Bo -- den,
  fällt mit ihm die Hoff -- nung ab,
  fall ich sel -- ber mit zu Bo -- den,
  wein, __ wein __ auf mei -- ner Hoff -- nung Grab, __
  wein, __ wein __ auf mei -- ner Hoff -- nung Grab.
}