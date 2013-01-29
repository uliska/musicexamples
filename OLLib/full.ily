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
  OLLib/full.ily
  This is the main entry point for openLilyLib's full OLLib.
%}

% Include all (full) sub-toolboxes
#(ly:set-option 'relative-includes #t)

% Editorial additions and (multiple editors') productivity tools
\include "editorialToolbox/editorialToolbox.ily"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Includes that are not imported from the old ulLibrary

% Visual highlightings of editorial Additions
%\include "../includes/ulLibrary/editorialToolbox.ily"

% Tools to manipulate (shape) curves (Slurs, PhrasingSlurs and Ties)
% and to display (debug) their bezier control points
%\include "../includes/ulLibrary/curvesToolbox.ily"

% Toolbox with some general tools
%\include "../includes/ulLibrary/generalTools.ily"

% Toolbox with manual tweaks like moved objects
%\include "../includes/ulLibrary/tweaks.ily"

% Toolbox for use with PianoStaff
%\include "../includes/ulLibrary/pianoToolbox.ily"

% A Scheme Engraver that prints double bar lines
% before any \time changes
%\include "../includes/ulLibrary/layout/DbBars_engraver.ily"

% a function that correctly places tuplet numbers on kneed beams
%\include "../includes/ulLibrary/layout/tuplet_numers_on_kneed_beams.ily"

% A Scheme Engraver that corrects stem-side staccato alignment
%\include "../includes/ulLibrary/layout/staccato_corrector_engraver.ily"
