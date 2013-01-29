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

% OLLib/full_draftMode.ily

%{
  This adds draftMode support for the full openLilyLib's OLLib
  and should be included after OLLib/full.ily

  Draft Mode is an essential concept of this library.
  It is desirable that as many tweaks as possible aren't hardcoded
  into the music files but defined in variables.
  Draft Mode files complement the corresponding library files and
  extend or redefine the functions so they additionally color the
  respective objects.
  Draft Mode files should _not_ have any impact on spacing and layout
  in order not to make any difference when active or not.
  
  In a usual project OLLib/full.ily (or any sub-library)
  should be included as part of the global configuration, 
  while the corresponding draftMode file should be
  directly included from any compilable master file.
  Then Draft Mode can easily deactivated on a file to file basis
  when editing is considered finished.
  
  OLLib is quite modular, and each include file should have
  its own corresponding Draft Mode file.
  So it is possible to include subsets of the library or even 
  single files
  
%}

#(ly:set-option 'relative-includes #t)

%activate editorialToolbox
\include "editorialToolbox/editorialToolbox_draftMode.ily"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Includes that are not imported from the old ulLibrary


%activate curvesToolbox
%\include "../includes/ulLibrary/curvesToolbox/curvesToolbox_draftMode.ily"

%\include "../includes/ulLibrary/tweaks/tweaks_draftMode.ily"

%\include "../includes/ulLibrary/generalTools/generalTools_draftMode.ily"

%\include "../includes/ulLibrary/pianoToolbox/pianoToolbox_draftMode.ily"

%TODO: Remaining parts are still in the big draftMode.ily of the Fried project