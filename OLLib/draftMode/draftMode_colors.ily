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
  OLLib/draftMode/draftMode_colors.ily
  Define all color variables that are used in Draft Mode files.
%}

%{ tweak-color
   
   Use this to mark manually moved grobs
   should rather be a dark color as light colors
   strongly influence the perception of the page
   Dark blue is barely noticable
%}
#(define tweak-color darkblue)

%{ switch-color
   
   Use this to mark switched elements 
   (like forced or hidden tuplets or other 
   direction switches)
%}
#(define switch-color blue)

%{ editorial-remark-color
   
   Editorial annotations or additions are highlighted in dark red
   which is reasonably noticeable but not too alarming
%}
#(define editorial-remark-color darkred)
#(define poke-color green)

%{ todo-warning-color
   
   Color with which \todo elements are colored
   Note that these are colored in editorial.ily
   and not in Draft Mode, because they must
   be dealt with before publication
   Magenta is used to be really 'loud'
%}
#(define todo-warning-color magenta)

%{ hidden-voice-color

   When hiding a voice for a cross voice curve
   The notehead is highlighted with this color
   One can optionally also color the curve
%}
#(define hidden-voice-color cyan)

%{ melisma-color

   \melOff is non-standard behaviour,
   so it is highlighted, but in a rather dark color
%}
#(define melisma-color darkgreen)
