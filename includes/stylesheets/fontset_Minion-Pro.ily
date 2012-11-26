%\version "2.17.3"
%{
  Default font set for Adobe Minion Pro
  
  Include this file if you want to use Minion Pro as your default font
  More Layout objects should be added 
  Keep in mind that there is also the opticals set available
  
  Of course this will only work if you have all referenced
  font faces of the Adobe Minon Pro family installed
%}

\layout {
  \context {
    \Score

    % Medium Condensed is a _very_ useful font face for lyrics
    % Condensed makes it quite narrow, and Medium suits very
    % well in LilyPond's overall appearance 
    \override BarNumber #'font-name = "Minion Pro Semibold Condensed"
    \override DynamicTextSpanner #'font-name = "Minion Pro Medium Italic"
    \override FootnoteItem #'font-name = "Minion Pro Medium"
    \override LyricText #'font-name = #"Minion Pro Medium Condensed"
    \override MetronomeMark #'font-name = "Minion Pro Bold"
    \override MultiMeasureRestText #'font-name = "Minion Pro Medium Italic"
    \override OttavaBracket #'font-name = "Minion Pro Semibold Condensed Italic"
    \override TextScript #'font-name = "Minion Pro Medium Italic"
    \override TextSpanner #'font-name = "Minion Pro Medium Italic"
    \override TupletNumber #'font-name = "Minion Pro Bold Italic"
  }


  \context {
    \Staff
    \override InstrumentName #'font-name = "Minion Pro Medium Condensed"
  }
  \context {
    \PianoStaff
    \override InstrumentName #'font-name = "Minion Pro Medium Condensed"
  }
}
