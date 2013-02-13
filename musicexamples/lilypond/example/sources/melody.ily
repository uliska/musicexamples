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

% Help for Frescobaldi
%%master: Heidenroeslein.ly

melody = \relative f' {
  \global
  \clef treble
  \autoBeamOff

  b8 b b b
  d16[ c] c[ b] a4
  a8 a b c
  d4 g8 r
  b,8 b b b 
  d16[ cis] cis[ b] a4
  d8 d e8. d16
  cis16[ d] e[ fis] d4
  d16[ fis] e[ d] cis[ b] ais[ b] 
  g'8.[ cis,16] d4\fermata
  a8^\markup \italic "nachgebend" a b c!
  d e16[ fis] g4\fermata
  e8^\markup \italic "wie oben" g c, e
  g,[ b16 a] g4 
  R2 * 2
  \bar "||"
}
