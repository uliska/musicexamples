\version "2.16.0"

% process a book with ly:book-process
% book - the book
% paper - the paper
% layout - layout or midi block
writeBook =
#(define-void-function (parser location book paper layout file)
   (ly:book? list? ly:output-def? string?)
   ; set all given paper vars in book paper
   (for-each (lambda (p)
               (if (pair? p)
                   (ly:output-def-set-variable! (ly:book-paper book) (car p)(cdr p))))
     paper)
   (ly:book-process book #{ \paper {} #} layout file))

% get the current output name
myname = #(ly:parser-output-name parser)

% our book
\book {
  \paper {
    print-first-page-number = ##t
    %{
    % odd/even header with pagenumber
    oddHeaderMarkup = \markup \fill-line {
      \null \bold \fromproperty #'page:page-number-string
    }
    evenHeaderMarkup = \markup \fill-line {
      \bold \fromproperty #'page:page-number-string \null
    }
 %}
  }
  
  innovativeMusic = \relative c'' {
    bes4 a c b cis a fis d c1
  }
  
  \markup { \myname }
  % innovative music
  \score {
    \innovativeMusic
  }
}


% write a pdf with first-page-number = 3 (odd)
% no to 'odd' suffix, to let frescobaldi display the result
%\writeBook #mybook #'((first-page-number . 3)) \layout {} #(format "~A" myname)
% write a pdf with first-page-number = 2 (even)
%\writeBook #mybook #'((first-page-number . 2)) \layout {} #(format "~A-even" myname)
% write a midi file
%\writeBook #mybook #'() \midi {
%  \tempo 4 = 120
%} #(format "~A-music" myname)
