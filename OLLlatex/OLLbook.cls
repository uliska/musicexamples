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

% Document class for an openLilyLib book

\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{OLLbook}

% Use the KOMA-script book class as the base class
\LoadClass{scrbook}

% Include the basic options that are common to OLL documents
\RequirePackage{OLLbase}

% Include style sheets, special constructs etc.
\RequirePackage{OLLstyles}

% The book classes don't have 'abstract' environments.
% But as we produce 'books' compiled from multiple 'articles'
% we need our own 'abstract' environment
\newenvironment{abstract}{%
	\addcontentsline{toc}{subsection}{Abstract}
	\begin{quote}
	\textbf{\textsf{Abstract}}	
	
	\medskip
}
{%
	\end{quote}
}
