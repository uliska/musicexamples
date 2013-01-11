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

% includes/scoreBlocks/lied_voice_piano.ily
%\version "2.17.3"
%{
   This score block can be used to print a voice-piano lied score.
   
   It expects the music in the variables
   - vocals
   - vocalText
   - pianoUp
   - pianoDynamics
   - pianoDown
   - pedal
   and a variable
   - skipsAndBreaks for manual breaks,
     which can also serve as a place for \set Score.skipTypesetting commands
   The staff and MIDI instrument names are called using
   - vocalStaffName
   - vocalStaffMidiInst 
   - pianoStaffName 
   - pianoStaffMidiInst
     
   Include the file includes/scoreBlocks/lied_voice_piano-defaults.ily
   before this score block.
   This will initialize the variables with empty content
   and set default Staff and MIDI instrument names.
   Then you can override any of the mentioned variables with real content
     
%}


\score { 
        <<
                \context Staff = Vocals <<
                        \accidentalStyle "modern"
                        \set Staff.instrumentName = \vocalStaffName
                        \set Staff.midiInstrument = \vocalStaffMidiInst
                        \new Voice  = "vocals" \vocals
                        
                        \skipsAndBreaks
                        
                      >>
                
                \lyricsto "vocals" \new Lyrics { \vocalText }
                
                \context PianoStaff = Piano 
                <<
                  \set PianoStaff.instrumentName = \pianoStaffName
                  \set PianoStaff.midiInstrument = \pianoStaffMidiInst
                        \context Staff = "up"
                        <<
                          \accidentalStyle "piano"
                          \pianoUp
                        >>
                        \context Dynamics \pianoDynamics
                        \context Staff = "down" 
                        <<
                          \accidentalStyle "piano"
                          \pianoDown
                          \pedal
                        >>
                >>
        >>
        \layout {}
        
        \midi {
          \context {
            \Score
            % volume changes in the score shouldn't influence
            % playback much (because my scores generally aren't
            % optimised for midi playback)
              midiMinimumVolume = #0.7
              midiMaximumVolume = #1
          }
          
          % excpect a midi-settings file in the same folder
          % as the master file. If none is present there is
          % an error message - which can be ignored.
          % To avoid the message you can safely put an empty
          % file in the same folder as your main .ly file
          \include "midi-settings.ily"  
        }
}

