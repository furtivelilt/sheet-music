\version "2.26.0"
\include "swing.ly"
#(set-global-staff-size 17)

\paper {
  property-defaults.fonts.serif = "Courier"
}

\header {
  title = "Titel"
  composer = "Composer"
  arranger = "Arr. B. Lockmann"
  subtitle= \markup {\italic "Täle Chor"}
}

global = {
  \time 6/8
  \key c \major
  \tempo 8 = 200
  \partial 8*3
}

sopranMusic = {
  \relative c' {
  }
}

altMusic = {
  \relative c' {
  }
}

tenorMusic = {
  \relative c {
  }
}

bassMusic = {
  \relative c {
  }
}

sopranText = \lyricmode{

}

altText = \lyricmode{

}

tenorText = \lyricmode{

}

bassText = \lyricmode{

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
          \sopranMusic
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
          \altMusic
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
          \tenorMusic
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
          \bassMusic
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
      \Score 
      \override LyricSpace.minimum-distance = #1
      \RemoveEmptyStaves
      % Uncomment the next line if you want to hide empty staves even on the very first system:
      % \override VerticalAxisGroup.remove-first = ##t
    }
  }

  \midi {}

}

