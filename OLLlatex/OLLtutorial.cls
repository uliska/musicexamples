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

% Document class for a openLilyLib tutorial
%
% Any single tutorial should be able to be used
% - as a standalone document
% - as part of a compilation of tutorials
% - as part of a compilation of all openLilyLib materials.
%
% A tutorial will become a \chapter in one of the compiled book formats.
% This implies that the topmost sectioning level of a tutorial
% should be the \section.
%
% Set up the standalone version of the tutorial using this class,
% possibly write an independent version of the introduction
% and include the contents of the tutorial from a separate .inc document

\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{OLLtutorial}

% Use the KOMA-script report class as the base class
\LoadClass{scrreprt}

% Include all options that are common to OLL documents
\RequirePackage{OLLbase}

