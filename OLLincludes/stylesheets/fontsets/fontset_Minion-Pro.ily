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
  Default font set for Adobe Minion Pro
  
  Include this file if you want to use Minion Pro as your default font
  Keep in mind that there is also the opticals set available
  
  Of course this will only work if you have all referenced
  font faces of the (non-free) Adobe Minon Pro family installed
%}

\layout {
  \context {
    \Score

    % Medium Condensed is a _very_ useful font face for lyrics
    % Condensed makes it quite narrow, and Medium suits very
    % well in LilyPond's overall appearance 
    \override BarNumber #'font-name = "Minion Pro Semibold Condensed"
    \override DynamicTextSpanner #'font-name = "Minion Pro Medium Italic"
    \override FootnoteItem #'font-name = "Minion Pro Medium"
    \override LyricText #'font-name = #"Minion Pro Medium Condensed"
    \override MetronomeMark #'font-name = "Minion Pro Bold"
    \override MultiMeasureRestText #'font-name = "Minion Pro Medium Italic"
    \override OttavaBracket #'font-name = "Minion Pro Semibold Condensed Italic"
    \override TextScript #'font-name = "Minion Pro Medium Italic"
    \override TextSpanner #'font-name = "Minion Pro Medium Italic"
    \override TupletNumber #'font-name = "Minion Pro Bold Italic"
  }

  \context {
    \Staff
    \override InstrumentName #'font-name = "Minion Pro Medium Condensed"
  }

  \context {
    \PianoStaff
    \override InstrumentName #'font-name = "Minion Pro Medium Condensed"
  }
}
