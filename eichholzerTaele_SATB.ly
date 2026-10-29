\version "2.26.0"
\include "swing.ly"
#(set-global-staff-size 18)

\paper {
  property-defaults.fonts.serif = "Courier"
}

\header {
  title = "Eichholzer Täle"
  composer = "Composer"
  arranger = "Arr. B. Lockmann"
  subtitle= \markup {\italic "Täle Chor"}
}

global = {
  \time 4/4
  \key bes \major
  \tempo 4 = 110
  \partial 8*3
  \set Staff.midiInstrument = "voice aahs"
}

sopranMusic = {
  \relative c' {
    d4.~
    d1
    e2 e8 fis e cis
    d2 d
    d4 c d8 es g f
    bes1
    bes
    c4 a es' c 
    es4. f16 c16 d2~
    d1
  }
}

altMusic = {
  \relative c' {
    r8 a4~
    a1
    cis2 cis8 d a bes
    b2 b 
    a bes8 c es d
    es1
    f
    d4 f c f
    a4 bes2.~
    bes1

  }
}

tenorMusic = {
  \relative c {
    r4 e8~
    e2 fis
    a1
    g2 f 
    f1
    g1
    g
    g4 a a a
    g8 f~f4~f2~
    f1
  }
}

bassMusic = {
  \relative c {
    r4. 
    d1
    d2~d4.des8
    c2 b4 a
    bes1

    bes4 es f es
    d es d c
    bes f fis f
    bes1~
    bes
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

