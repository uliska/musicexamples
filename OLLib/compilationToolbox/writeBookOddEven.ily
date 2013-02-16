\version "2.16.0"

% get the current output name
myname = #(ly:parser-output-name parser)

% process a book with ly:book-process
% book - the book
writeBookOddEven =
#(define-void-function (parser location oddpagenum book)
   (number? ly:book?)
   ; process with first-number 1
   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number oddpagenum)
   (ly:book-process book #{ \paper {} #} #{ \layout {} #} myname)
   ; process with first-number 2
   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number (+ 1 oddpagenum))
   (ly:book-process book #{ \paper {} #} #{ \layout {} #} (format "~A-even" myname)))
%{ Usage example
%
% Define a score block
thescore = { 
  \relative c'' {
    c b a g c1
  }
}

% Let the first page number be visible (to see the result)
\paper {
  print-first-page-number = ##t
}
  
% Define a book context with the score included
mybook = \book {
  \thescore
}

% Call the function
\writeBookOddEven #mybook

%}