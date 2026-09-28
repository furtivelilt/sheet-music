\version "2.26.0"
\include "swing.ly"
#(set-global-staff-size 18)

\paper {
  property-defaults.fonts.serif = "Courier"
}

\header {
  title = "Happy Together"
  composer = "The Turtles"
  arranger = "Arr. B. Lockmann"
  subtitle= \markup {\italic ""}
}

global = {
  \time 4/4
  \key es \minor
  \tempo swing 4 = 120
  \partial 8
}

sopranMusic = {
  \tripletFeel 8 \relative c' {
    r8 
    r1 
  }
}

altMusic = {
  \tripletFeel 8 \relative c' {
    r8 
  }
}

tenorMusic = {
  \tripletFeel 8 \relative c {
    des8 
    e des des'

  }
}

bassMusic = {
  \tripletFeel 8 \relative c {
    r8 

    ges4 ges ges ges 
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
      \Staff 
      \RemoveEmptyStaves
      % Uncomment the next line if you want to hide empty staves even on the very first system:
      % \override VerticalAxisGroup.remove-first = ##t
    }
  }

  \midi {}

}

