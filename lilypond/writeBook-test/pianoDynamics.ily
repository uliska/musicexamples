\version "2.17.4"
\language "deutsch"

pianoDynamics = \relative f'' {
  \globals
  s8\pp |
  s2.*4 | %1-4
  s2.*14 | %5-18
  s2.-\markup "cresc." | %19
  s2.*3 | %20-22
  s4.\< s4.\> | %23
  s2.\! | %24
  s2.-\markup "cresc." | %25
  s4 s2\< | %26
  s4\> s2\! | %27
  s8 s2-\markup "decresc." s8 | %28
  s2.\p-\markup "un poco ritard." | %29
  s8 s8\pp s2 | %30
  s8 s4-\markup "a tempo" s4.-\markup "cresc." | %31
  s4. s4.\< | %32
  s4\> s2\! | %33
  s2.-\markup "decresc." | %34
  s2.*6\p | %35-40
  s2.*6\pp | %41-46
  s2.\pp
}

