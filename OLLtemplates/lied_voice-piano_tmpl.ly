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
   examples/lied_voice-piano_tmpl.ly
   
   Example/template for a voice-piano song score.
   Take this file as a start and replace items appropriately
   
%}

\version "2.17.4"
\language "deutsch"

% Include the main style sheet
\include "OLLincludes/stylesheets/default-a4-lied.ily"
% alternatively use default-a4-lied_minion.ily instead

% To adjust the layout don't edit the include files
% but apply any overrides here
% \include "localLayoutOverrides.ily"

% Include empty variables and default labels
\include "OLLincludes/scoreBlocks/lied_voice_piano-defaults.ily"

% Override English staff names
% for example with German names
%vocalStaffName = #"Stimme"
%pianoStaffName = #"Klavier"

% Define headers and a \global variable
%\include "globals.ily"

%{ include music contents and override any or all of 
   - vocals
   - vocalText
   - pianoUp
   - pianoDown
   - pianoDynamics
   - pedal
   
   To keep this file clean,
   use include files in the same directory or a 'music' subdir
%}
%\include "vocals.ily"
%\include "vocalText.ily"
%\include "pianoUp.ily"
%\include "pianoDown.ily"
%\include "pianoDynamics.ily"
%\include "pedal.ily"


% Include actual score block
\include "OLLincludes/scoreBlocks/lied_voice_piano.ily"

