\version "2.17.9"

% The music displayed is in the public domain,
% The score files can be used under the conditions
% of the GNU General Public License v.3.0 or any later version

% This is the complete score on one full page
% used to be started on an odd page

% Include music definitions
\include "definitions/layout.ily"
\include "definitions/globals.ily"
\include "definitions/melody.ily"
\include "definitions/lyrics.ily"
\include "definitions/piano.ily"

\paper {
  indent = 0
  system-count = 1
  ragged-bottom = ##t
  bookTitleMarkup = ""
  scoreTitleMarkup = ""
}


#(ly:set-option 'preview #t)
#(ly:set-option 'print-pages #f)


text = {}

skips = {
  \set Score.skipTypesetting = ##t
  s2*8
  \set Score.skipTypesetting = ##f
  s2*2
  \set Score.skipTypesetting = ##t
}

\include "definitions/score.ily"
