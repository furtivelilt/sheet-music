\version "2.26.0"
\include "swing.ly"
#(set-global-staff-size 18)

\paper {
  property-defaults.fonts.serif = "Courier"
}

\header {
  title = "Hit the road jack"
  composer = "Ray Charles"
  arranger = "Arr. B. Lockmann"
  subtitle= \markup {\italic " \"Ich seh' schwarz, wie Ray Charles\" "}
}

sopranText = lyricsmode

global = {
  \time 4/4
  \key bes \minor
  \tempo swing 2 = 72
}

\score {
  \transpose c c{
  \new ChoirStaff <<

    \new Staff = "Sopran" <<
      \set Staff.instrumentName = "Sopran"
      \global 
      \clef "treble"
      \new Voice = "Sopran" {
        { 
        }
      }
      \new Lyrics = "Sopran" {
        \lyricsto "Sopran" {
          \sopranText
        }
      }
    >>

    \new Staff = "Alt" <<
      \set Staff.instrumentName = "Alt"
      \global
      \clef "treble"
      \new Voice = "Alt" {
        {
          \altIntro
          \altBridge
          \altRef
          \altVerseOne
          \altRef
          \altVerseTwo
          \repeat volta 2{{\altRef \tripletFeel 8 \relative c'{es8 des} }}
          \tripletFeel 8 \relative c' {
            r4 as8 as~as2~
            as1 \breathe

            r4 des8 des~des2~
            des1 \breathe

            r4 bes8 bes~bes2~
            bes1 \breathe

            r4 c8 c~c2~
            c1 \breathe

            r4 des8 des~des2~
            des1 \breathe

            r4 c8 c~c2~
            c1 \breathe

            r4 des8 des~des2
            r2 c \breathe

            r4 es2
            des4~
            des1
          }
        }
      }
      \new Lyrics = "Alt" {
        \lyricsto "Alt" {
          \altText
        }
      }
    >>
    
    \new Staff = "Tenor" <<
      \set Staff.instrumentName = "Tenor"
      \global
      \clef "bass"
      \new Voice = "Tenor" {
        {
          \tenorIntro
          \tenorBridge
          \tenorRef
          \tenorVerseOne
          \tenorRef
          \tenorVerseTwo
          \repeat volta 2{{\tenorRef \tripletFeel 8 \relative c'{as4 \breathe}}}
          \tripletFeel 8 \relative c {
            r8 es es es~es2~
            es1 \breathe

            r8 as as as~as2~
            as1 \breathe

            r8 des, des des~des2~
            des1 \breathe

            r8 as' as as~as2~
            as1 \breathe

            r8 as as as~as2~
            as1 \breathe

            r8 as as as~as2~
            as1 \breathe

            r8 bes bes bes4.(as4) 
            r4 as2. \breathe

            r8 ges8~ges2~ges8(as
            as1)
            
          }
        }
      }
      \new Lyrics = "Tenor" {
        \lyricsto "Tenor" {
          \tenorText
        }
      }
    >>

    \new Staff = "Bass" <<
      \set Staff.instrumentName = "Bass"
      \global
      \clef "bass"
      \new Voice = "bass" {
        {
        
        }
      }
      \new Lyrics = "bass" {
        \lyricsto "bass" {
          \bassText
        }
      }
      
    >>
  >>
}
  \layout {
    \context {
      \Staff 
      \RemoveEmptyStaves
      % Uncomment the next line if you want to hide empty staves even on the very first system:
      % \override VerticalAxisGroup.remove-first = ##t
    }
  }

  \midi {}

}

