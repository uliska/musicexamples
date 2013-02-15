\version "2.16.0"

\include "writeScoreOddEven.ily"

compileScore = 
#(define-void-function (parser location score)
   (ly:score?)
   ; this compiles the file(s) but returns with an error message
   (#{ \writeScoreOddEven #1 \score { $score } #})
   ; the following syntax doesn't work either
   ;(writeScoreOddEven 1 score)
   )

% Make results visible
\paper { print-first-page-number = ##t }

% Call the function
\compileScore \score { 
    \relative c'' {
      c b a g c1
    }
  }
