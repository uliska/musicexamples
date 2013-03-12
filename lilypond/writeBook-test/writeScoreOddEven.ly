\version "2.16.0"

% get the current output name
mybasename = #(ly:parser-output-name parser)

% process a score with ly:book-process
% score - the score
writeScoreOddEven =
#(define-void-function (parser location score)
   (ly:score?)
   (let ((book #{ \book { \score { $score } } #}))
   ; process with first-number 1
   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number 1)
   (ly:book-process book #{ \paper {} #} #{ \layout {} #} mybasename)
   ; process with first-number 2
   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number 2)
   (ly:book-process book #{ \paper {} #} #{ \layout {} #} (format "~A-even" mybasename))
   ))

 %Usage example:
   
% Let the first page number be visible (to see the result)
\paper {
  print-first-page-number = ##t
}

compileScore = 
#(define-void-function (parser location score)
   (ly:score?)
   (writeScoreOddEven #'score)
   )

% Call the function
\compileScore
  \score { 
    \relative c'' {
      c b a g c1
    }
  }

%}
