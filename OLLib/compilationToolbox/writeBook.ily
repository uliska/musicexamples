%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%      This file is part of the 'openLilyLib' library.                    %
%                                ===========                              %
%                                                                         %
%              https://github.com/lilyglyphs/openLilyLib                  %
%                                                                         %
%  Copyright 2012-13 by Urs Liska, lilyglyphs@ursliska.de                 %
%                                                                         %
%  'openLilyLib' is free software: you can redistribute it and/or modify  %
%  it under the terms of the GNU General Public License as published by   %
%  the Free Software Foundation, either version 3 of the License, or      %
%  (at your option) any later version.                                    %
%                                                                         %
%  This program is distributed in the hope that it will be useful,        %
%  but WITHOUT ANY WARRANTY; without even the implied warranty of         %
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the           %
%  GNU General Public License for more details.                           %
%                                                                         %
%  You should have received a copy of the GNU General Public License      %
%  along with this program.  If not, see <http://www.gnu.org/licenses/>.  %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ 
   writeBook.ily
   Part of the compilationToolbox.
   Functions that take a \book object and compile it
%}

\version "2.16.0"

%{
   writeBook
   
   compiles a \book object.
   The function takes several arguments:
   - the \book construct
   - a list of (key . value) pairs with \paper variables
   - a \layout command and
   - a file name
%}
writeBook =
#(define-void-function (parser location book paper layout file)
   (ly:book? list? ly:output-def? string?)
   ; set all given paper vars in book paper
   (for-each (lambda (p)
               (if (pair? p)
                   (ly:output-def-set-variable! (ly:book-paper book) (car p)(cdr p))))
     paper)
   (ly:book-process book #{ \paper {} #} layout file))


%{
   writeBookOddEven.ily
   
   Takes a \book and prints it twice, starting with an odd and even page.
   
   The function takes two arguments:
   - #1: the starting page number for the odd version
   - #2: a \book object
   
   The function compiles the given \book twice:
   - first with first-number set to the given argument
   - second with the first-number as argument + 1
     and the output filename appended with '-even'

   TODO: The hard coded page numbers have to be replaced
         by oddpagenum and (+ 1 oddpagenum),
         but this didn't work right away ...
%}

writeBookOddEven =
#(define-void-function (parser location oddpagenum book)
   (number? ly:book?)
   ; process with first-number oddpagenum
   #{ \writeBook \book { $book } $'((first-page-number . 1)) \layout {} $(ly:parser-output-name parser) #}
;   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number oddpagenum)
;   (ly:book-process book #{ \paper {} #} #{ \layout {} #} (ly:parser-output-name parser))
   ; process with first-number oddpagenum + 1
   #{ \writeBook \book { $book } $'((first-page-number . 2)) \layout {} $(format "~A-even" (ly:parser-output-name parser)) #}
;   (ly:output-def-set-variable! (ly:book-paper book) 'first-page-number (+ 1 oddpagenum))
;   (ly:book-process book #{ \paper {} #} #{ \layout {} #} (format "~A-even" (ly:parser-output-name parser))))
)
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
  
% Define a little \book
mybook = \book {
  \score {
    \relative c'' {
      c b a g c1  
    }
  }
}

% Call writeBook
% write a pdf with first-page-number = 2 (even)
\writeBook #mybook #'((first-page-number . 2)) \layout {} #(format "~A-even" (ly:parser-output-name parser))
% write a midi file
\writeBook #mybook #'() \midi {
  \tempo 4 = 120
} #(format "~A-music" (ly:parser-output-name parser))

% Call writeBookOddEven
\writeBookOddEven #13 #mybook

%}