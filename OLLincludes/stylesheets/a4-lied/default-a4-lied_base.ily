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
   includes/stylesheets/default-a4-lied_base.ily
 
   This is a stylesheet for setting a voice-piano song on A4 paper
   It allows for four systems on a page, 
   is sufficiently small to get enough music on the page
   while giving a nicely 'bold' impression
   
   Don't include this file directly, but either
   default-a4-lied.ily or any
   default-a4-lied_XX.ily stylesheet (XX being replaced with a font name)
   These switch the font face of the grobs
   and adjust the font sizes.
   
%}

%\version "2.17.3"

% Make teh glogal setting quite small
% but we'll tweak the style quite a lot 
% to make a 'bolder' impression
#(set-global-staff-size 17)

\paper {
  
  #(set-paper-size "a4")

  % Page layout
  two-sided = ##t
  top-margin = 12\mm
  bottom-margin = 6\mm
  inner-margin = 18\mm
  outer-margin = 16\mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  print-first-page-number = ##t

  % Score layout
  indent = 12\mm
  top-markup-spacing #'minimum-distance = #6
  top-system-spacing #'padding = #3
  markup-system-spacing #'padding = #2
  markup-system-spacing #'minimum-distance = #13
  last-bottom-spacing #'padding = #6

}

\layout {

  \context {
    \Score
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % General sizes
    % Increase fontSize to make it 'bolder'
    fontSize = #0.4

    % Adjust Clef and TimeSignature so they aren't out of place

    % TimeSignature just reverts the fontSize
    % so it fits between the staff lines
    % TimeSignature is therefore smaller than the music
    % but we decided it doesn't hurt
    \override TimeSignature #'font-size = #-0.4

    % Reverting Clef size completely looks strange
    % Therefore #-0.25 is a compromise
    \override Clef #'font-size = #-0.25

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Adjustments

    % Now we'll have to adjust many items
    % so they produce a coherent style
    % (generally everything becomes thicker)

    % line thicknesses
    \override BarLine #'hair-thickness = 2
    \override Glissando #'thickness = #1.4
    \override Hairpin #'thickness = 1.5
    \override OttavaBracket #'thickness = #1.3
    \override Slur #'line-thickness = 1
    \override Stem #'thickness = 1.7
    \override TextSpanner #'thickness = #1.75
    \override VoiceFollower #'thickness = #1.3

    % other adjustments
    
    \override MetronomeMark #'padding = #2
    
    % Make Arpeggio slightly thinner
    \override Arpeggio #'font-size = #-0.25

    % Adjust the dash structure of text spanners
    \override TextSpanner #'dash-period = #3
    \override TextSpanner #'dash-fraction = #0.2

    % Adjust the dash structure of StaffSwitch and Glissando
    % Only effective when #'dashed-line style
    \override VoiceFollower #'dash-period = #2
    \override VoiceFollower #'dash-fraction = #0.6

  }

  \context {
    \PianoStaff
    connectArpeggios = ##t
    \accidentalStyle "piano"
    % \consists #Span_stem_engraver

  }
  \context {
    \Staff

  }

  \context {
    \Dynamics
    \consists "Bar_engraver"
    \consists "Separating_line_group_engraver"
    \override BarLine #'transparent = ##t
  }
  
  \context {
    \Voice

  }
  
  \context {
    \Lyrics
    % expand hyphen's mininal distance, so there are always hyphens
    % force some wider spacing instead of removing the hyphen
    \override LyricHyphen #'minimum-distance = #0.6

  }

}

%{
   Include a file with empty music definitions.
   These are necessary because they are expected by the score block.
   An actual score should redefine any or all of the variables
%}

#(ly:set-option 'relative-includes #t)
\include "../../scoreBlocks/lied_voice_piano-defaults.ily"

