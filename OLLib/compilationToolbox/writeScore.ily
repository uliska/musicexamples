\version "2.16.0"

% Helper function
% get the basename of the main file
mybasename = #(ly:parser-output-name parser)

% create two pdf files from the given score,
% one starting with an odd, the other starting with an even page.
% - Arg1 is the number of the odd starting-page
%  (the even starting-page will be oddpage + 1
% - Arg2 is the score to be printed.
% 
% The oddpage version will keep the original name
% while the evenpage version will be appended '-even'
writeScoreOddEven =
#(define-void-function (parser location oddpagenum score)
   (number? ly:score?)
   (let ((book #{ \book { \score { $score } } #}))
   ; process with first-number 1
   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number oddpagenum)
   (ly:book-process book #{ \paper {} #} #{ \layout {} #} (ly:parser-output-name parser))
   ; process with first-number 2
   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number (+ oddpagenum 1))
   (ly:book-process book #{ \paper {} #} #{ \layout {} #} (format "~A-even" (ly:parser-output-name parser)))
   ))

%{ Usage example:
   
% Let the first page number be visible (to see the result)
\paper {
  print-first-page-number = ##t
}

% Do any configuration
\header {
  % ...
}

% \include "some-music.ily"

% Call the function
\writeScoreOddEven #11 \score { 
    \relative c'' {
      c b a g c1
    }
  }
  
%}
