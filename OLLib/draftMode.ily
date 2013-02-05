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

% OLLib/draftMode.ily

%{
   This file should be called at the end of any library file 
   that has an associated draftMode file.
   If the master file has switched on the draftMode by
     #(define-public draft-mode #t)
   this function includes the file specified by
     #(define draft-mode-file "...") (appended by _draftMode.ily)
%}

includeDraftMode =
#(define-void-function (parser location)()
   (if (defined? 'draft-mode)
       (if draft-mode
           ; Include the appropriate _draftMode.ily file
           , if draft-mode is defined and true
           (ly:parser-include-string parser
               (string-append "\\include \"OLLib/" (string-append draft-mode-file "_draftMode.ily\"\n"))
           )
       )
   )
)

\includeDraftMode
