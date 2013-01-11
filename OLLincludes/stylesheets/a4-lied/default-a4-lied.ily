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
   includes/stylesheets/default-a4-lied.ily
   
   Stylesheet for a voice-piano song on A4 paper

   TODO: The font-sizes have to be adjusted 
%}

#(ly:set-option 'relative-includes #t)
% Condensed layout with 'semibold' appearance
\include "default-a4-lied_base.ily"

% Adjust the font sizes to the combination of the stylesheet and the font
\layout {
  
  \context {
    \Score
%    \override BarNumber #'font-size = #1.25
%    \override DynamicTextSpanner #'font-size = #0.5
%    \override LyricText #'font-size = #1.25
%    \override MetronomeMark #'font-size = #2
%    \override MultiMeasureRestText #'font-size = #0.5
%    \override OttavaBracket #'font-size = #0.3
%    \override TextScript #'font-size = #0.5
%    \override TextSpanner #'font-size = #0.5
%    \override TupletNumber #'font-size = #-1
  }

  \context {
    \PianoStaff
%    \override InstrumentName #'font-size = #1.25
  }

  \context {
    \Staff
%    \override InstrumentName #'font-size = #1.25
  }

  \context {
    \Dynamics
%    \override TextScript #'font-size = #1.2 % has to be set separately (a bug?)
%    \override TextSpanner #'font-size = #1.2
%    \override DynamicTextSpanner #'font-size = #1.2
  }

}
    