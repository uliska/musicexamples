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
   OLLib/editorialToolbox/inSourceCommunication_draftMode.ily
   
  Draft mode extension to inSourceCommunication.ily
  Colors the corresponding grobs during editing.
  As it doesn't affect the spacing at all it is safe 
  to include it or not.
%}

#(ly:set-option 'relative-includes #t)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define the used colors
\include "../draftMode/draftMode_colors.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Editorial productivity tools: comment and discuss 
% % (todo isn't redefined here, that is only in editorial.ily)

% Post an editor's comment in the source file and attach it to a grob.
comment = 
#(define-music-function (parser location grob comment)
                        (string? string?)
                        #{
                          \once \override $grob #'color = #editorial-remark-color
                        #}
)

% Post an editor's comment in the source file and issue a compiler warning
discuss = 
#(define-music-function (parser location grob comment)
                        (string? string?)
                        (ly:input-warning location "Editor's remark")
                        #{
                          \once \override $grob #'color = #editorial-remark-color
                        #}
)

% Just highlight a given grob
poke = 
#(define-music-function (parser location grob)
                        (string?)
                        #{
                          \once \override $grob #'color = #poke-color
                        #}
)
