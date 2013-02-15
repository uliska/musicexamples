%{
   This file is part of:
   Urs Liska: Mehrfachfassungen Schubertscher Lieder
   Doctoral thesis (Hochschule für Musik Karlsruhe)
   (c) Urs Liska (mail@ursliska.de) 2013
%}

%{
   Letzte Hoffnung D 911/16
   Konfiguration für die Fragment-Beispiele
   (erforderlich, da die Beispiele jeweils 
    aus der kopletten Partitur entnommen sind)
%}

% Clear instrument names
vocalStaffName = ""
pianoStaffName = ""

% Wir benötige die Vortragsangabe nicht
\layout {
  \context {
    \Score
    \remove Metronome_mark_engraver
  }
}
