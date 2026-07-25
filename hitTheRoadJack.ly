\version "2.26.0"
\include "swing.ly"
\include "intro.ly"

\header {
  title = "Hit the road jack"
  composer = "Ray Charles"
  arranger = "Arr. B. Lockmann"
  subtitle= \markup {\italic " ''Ich seh schwarz, wie Ray Charles'' "}
}

global = {
  \time 4/4
  \key bes \minor
  \tempo swing 2 = 70
}

\score {
  \transpose es es{
  \new ChoirStaff <<
    \new Staff = "Sopran" <<
      \set Staff.instrumentName = "Sopran"
      \global 
      \clef "treble"
      \sopranIntro
    >>

    \new Staff = "Alt" <<
      \set Staff.instrumentName = "Alt"
      \global
      \clef "treble"
      \altIntro
    >>
    
    \new Staff = "Tenor" <<
      \set Staff.instrumentName = "Tenor"
      \global
      \clef "bass"
      \tenorIntro
    >>

    \new Staff = "Bass" <<
      \set Staff.instrumentName = "Bass"
      \global
      \clef "bass"
      \bassIntro
    >>
  >>
}
  \layout {}
  \midi {}

}

