%{
   This file is part of:
   Urs Liska: Mehrfachfassungen Schubertscher Lieder
   Doctoral thesis (Hochschule für Musik Karlsruhe)
   (c) Urs Liska (mail@ursliska.de) 2013
%}

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

writeBookOddEven =
#(define-void-function (parser location book)
   (ly:book?)
   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number 1)
   (ly:book-process book #{ \paper {} #} #{ \layout {} #} myname)
   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number 2)
   (ly:book-process book #{ \paper {} #} #{ \layout {} #} (format "~A-even" myname)))




standaloneComment = \markuplist {
  \line { Edition entsprechend der Analyse }
  \line { Artikulationen bewusst ergänzt }
}

#(define-public draft-mode #t)

#(define-public score-type "multi-page-example")
\include "layout/output-mode.ily"
\version "2.17.11"
  
  % Load empty default variables for score block
  \include "OLLincludes/scoreBlocks/lied_voice_piano-defaults.ily"
  
  % specify properties of the individual score
  vocalStaffName = #"Voce"
  pianoStaffName = #"Pianoforte"
  
  
  % include music contents 
  \include "globals.ily"
  \include "vocals.ily"
  \include "pianoUp.ily"
  \include "pianoDown.ily"
  \include "pianoDynamics.ily"



\writeBookOddEven \book { \include "OLLincludes/scoreBlocks/lied_voice_piano.ily"}


% write a pdf with first-page-number = 3 (odd)
% no to 'odd' suffix, to let frescobaldi display the result
%\writeBook #mybook #'((first-page-number . 3)) \layout {} #(format "~A" myname)
% write a pdf with first-page-number = 2 (even)
%\writeBook #mybook #'((first-page-number . 2)) \layout {} #(format "~A-even" myname)
% write a midi file
%\writeBook #mybook #'() \midi {
%  \tempo 4 = 120
%} #(format "~A-music" myname)
