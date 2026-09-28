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
  \key fis \minor
  \tempo swing 4 = 120
  \partial 4
}

sopranMusic = {
  \tripletFeel 8 \relative c' {
    % Intro
    %=====
    r4

    r4 a' gis8 fis~fis4
    r fis e8 cis~cis4
    r4 a' gis8 fis~fis4
    r fis e8 cis~cis4

    % Verse One
    %=====
    r4 a' gis8 fis~fis4
    r fis e8 cis~cis4
    r4 gis' fis8 e~e4
    r e fis8 gis~gis4

    r fis a8 fis~fis4
    r fis e8 fis~fis4
    r f dis8 f~f4
    r f dis8 f~f4

    r4 a gis8 fis~fis4
    r fis cis'8 b cis4
    r4 gis fis8 e~e4
    r e fis8 gis~gis4

    r fis a8 fis~fis4
    r fis e8 fis~fis4
    r f dis8 f~f4
    f2. r4

    % Chorus
    %=====
  }

}

altMusic = {
  \tripletFeel 8 \relative c' {
    % Intro
    %=====
    r4 

    r cis e8 cis~cis4
    r cis b8 cis~cis4
    r cis b8 cis~cis4
    r cis e8 cis~cis4

    % Verse One
    %=====
    r cis e8 cis~cis4
    r cis b8 cis~cis4
    r cis b8 cis~cis4
    r cis e8 cis~cis4

    r cis e8 cis~cis4
    r cis b8 cis~cis4
    r cis cis8 cis~cis4
    r cis cis8 dis~dis4

    r cis e8 cis~cis4
    r cis a'8 gis a4
    r cis, b8 cis~cis4
    r cis e8 cis~cis4

    r cis e8 cis~cis4
    r cis b8 cis~cis4
    r cis cis8 cis~cis4
    gis2. r4

    % Chorus
    %=====

  }
}

tenorMusic = {
  \tripletFeel 8 \relative c {
    % Intro
    %=====
    r8 cis8

    e-. cis cis'2~cis8 cis,
    e-. cis~cis e-. a4 fis8 cis
    e-. cis cis'2~cis8 cis,
    e-. cis~cis e-. r8 a8 fis gis

    % Verse One
    %=====
    a gis a4 r8 gis a4
    r cis b8 a gis fis
    gis fis gis4 r8 gis e fis
    gis16( a gis8~gis8) b8 a gis fis e 

    fis e fis4~fis8 fis e f 
    fis4 r8 fis fis gis~gis fis 
    f4 cis'2.~
    cis2 r8 a8 fis gis

    a gis a4 r8 gis a4
    r cis b8 a gis fis
    gis fis gis4 r8 gis e fis
    gis16( a gis8~gis8) b8 a gis fis e 

    fis e fis4~fis8 fis e f 
    fis4 r8 fis fis gis~gis fis 
    f4 cis'2.~
    cis2. r4

    % Chorus
    %=====
  }
}

bassMusic = {
  \tripletFeel 8 \relative c {
    %Intro
    %=====
    r4

    r1
    r2. r8 cis
    fis,4 fis fis fis
    fis fis fis fis
     
    % Verse One
    %=====
    fis fis fis fis
    fis fis fis fis
    e' e e e 
    e e e e
    d d d d
    d d d d
    cis cis cis cis
    cis cis cis cis

    fis, fis fis fis
    fis fis fis fis
    e' e e e 
    e e e e
    d d d d
    d d d d
    cis cis cis cis
    cis2. r4
   
  }
}

sopranText = \lyricmode{
  % Intro
  %=====
  doh bah dah
  doh bah dah
  doh bah dah
  doh bah dah

  % Verse One
  %=====
  doh bah dah
  doh bah dah
  doh bah dah
  doh bah dah

  doh bah dah
  doh bah dah
  doh bah dah
  doh bah dah

  doh bah dah
  doh bah dah bah
  doh bah dah
  doh bah dah

  doh bah dah
  doh bah dah
  doh bah dah
  doh

}

altText = \lyricmode{
  % Intro
  %=====
  doh bah dah
  doh bah dah
  doh bah dah
  doh bah dah

  % Verse One
  %=====
  doh bah dah
  doh bah dah
  doh bah dah
  doh bah dah

  doh bah dah
  doh bah dah
  doh bah dah
  doh bah dah

  doh bah dah
  doh bah dah bah
  doh bah dah
  doh bah dah

  doh bah dah
  doh bah dah
  doh bah dah
  doh

}

tenorText = \lyricmode{

}

bassText = \lyricmode{
  bah
  doh doh doh doh

  doh doh doh doh
  doh doh doh bah
  doh doh doh doh
  doh doh doh bah

  doh doh doh doh
  doh doh doh bah
  doh doh doh doh
  doh doh doh bah

  doh doh doh doh
  doh doh doh bah
  doh doh doh doh
  doh doh doh bah

  doh doh doh doh
  doh doh doh bah
  doh doh doh doh
  doh doh doh bah

  doh
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

