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
   OLLib/pianoToolbox/pianoStaff.ily
   Shorthands to simplify the use of aPianoStaff
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Commands that simplify switching staves within a PianoStaff
% They assume the staves to be named 'up' and 'down'
% (in accordance with openLilyLib's score block naming conventions)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Change staff to "up" or "down"
% (shorthands)
SUp = \change Staff = "up"
SDn = \change Staff = "down"

% Change staff
% and switch Voice contexts to be inner voices
% (the most common use)
SSUp = { \SUp \voiceTwo }
SSDn = { \SDn \voiceOne }

% Change staff
% and switch to \oneVoice
% (another common use)
Ssup = { \SUp \oneVoice }
Ssdn = { \SDn \oneVoice }


%%%%%%%%%%%%%%%%%%%%%
% Miscellaneous tools
%%%%%%%%%%%%%%%%%%%%%

%{ \chordBracket
   
   Use an arpeggio bracket to indicate a cross staff chord
   Shorthand to once override the arpeggio bracket
   use in combination with a following \arpeggio command  
   (does only work in combination with the connectArpeggios defined below)
%}
chordBracket = {
  \once \override PianoStaff.Arpeggio #'stencil = #ly:arpeggio::brew-chord-bracket
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General overrides for a PianoStaff
% (Provide useful defaults)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout {
        \context {
              \PianoStaff
              % activate the possibility to use cross staff stems
              \consists #Span_stem_engraver
              % Arpeggios are more often connected than not
              connectArpeggios = ##t 
        }
  }   

