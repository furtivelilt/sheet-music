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
  subtitle= \markup {\italic "Täle Chor"}
}

global = {
  \time 4/4
  \key fis \minor
  \tempo swing 4 = 150 %123
  \partial 4
  \set Staff.midiInstrument = #"violin"
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
    ais2~ais8 cis~cis4
    b2~b8 gis8~gis4
    ais4. ais8 ais b~b cis~
    cis4. cis8 cis b~b4

    ais2~ais8 cis~cis4
    b2~b8 gis8~gis4
    ais4. ais8 ais b~b cis~
    cis4. cis8 cis b~b4

    % Verse Two
    %=====
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
    ais2~ais8 cis~cis4
    b2~b8 gis8~gis4
    ais4. ais8 ais b~b cis~
    cis4. cis8 cis b~b4

    ais2~ais8 cis~cis4
    b2~b8 gis8~gis4
    ais4. ais8 ais b~b cis~
    cis4. cis8 cis b~b4

    % Verse Three
    %=====
    r4 a gis8 fis~fis4
    r fis cis'8 b cis4
    r4 gis fis8 e~e4
    r e fis8 gis~gis4

    r fis a8 fis~fis4
    r fis e8 fis~fis4
    r f dis8 f~f4
    f2. r4
  }

}

altMusic = {
  \tripletFeel 8 \relative c {
    % Intro
    %=====
    r8 cis8

    e-. cis cis'2 cis8 cis,
    e-. cis~cis e-. a4 fis8 cis
    e-. cis cis'2 cis8 cis,
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

    a gis a4 r8 gis fis gis a4
    r8 cis b8 a gis fis
    gis fis gis4 r8 gis e fis
    gis16( a gis8~gis8) b8 a gis fis e 

    fis e fis4~fis8 fis e f 
    fis4 r8 fis fis gis~gis fis 
    f4 cis'2.
    gis2. r4

    % Chorus
    %=====
    fis' cis ais fis
    e8 gis cis dis~
    dis e dis4 
    cis4. bes8 cis dis~dis e16( fis
    e2.) r4

    fis cis ais fis
    e8 gis cis dis~
    dis e dis4 
    cis4. bes8 cis dis~dis e16( fis
    e1)

    % Verse Two
    %=====
    a,8 gis a4 r8 gis fis gis
    a4 r8 cis b a gis fis
    gis fis gis4 r8 gis e fis
    gis4. b8 a gis fis e 

    fis e fis4~fis8 fis e f 
    fis4 r8 fis fis gis~gis fis 
    f4 cis'2.
    gis2. r4

    % Chorus
    %=====
    fis' cis ais fis
    e8 gis cis dis~
    dis e dis4 
    cis4. bes8 cis dis~dis e16( fis
    e2.) r4

    fis cis ais fis
    e8 gis cis dis~
    dis e dis4 
    cis4. bes8 cis dis~dis e16( fis
    e1)

    % Verse Three
    %=====
    a,8 gis a4 r8 gis fis gis
    a4 r8 cis b a gis fis
    gis fis gis4 r8 gis e fis
    gis4. b8 a gis fis e 

    fis e fis4~fis8 fis e f 
    fis4 r8 fis fis gis~gis fis 
    f4 cis'2.
    gis2. r4
  }
}

tenorMusic = {
  \tripletFeel 8 \relative c {
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
    cis2. r4

    % Chorus
    %=====
    fis1 \glissando
    e \glissando
    cis4. cis8 cis cis~cis e~
    e1

    fis1 \glissando
    e \glissando
    cis4. cis8 cis cis~cis e~
    e4 d2.

    % Verse Two
    %=====
    cis2 b 
    a2. r4
    b2 a 
    gis2. r4
    a2 gis
    fis2. r4 
    r cis' cis8 cis~cis4
    cis2. r4

    % Chorus
    %=====
    fis1 \glissando
    e \glissando
    cis4. cis8 cis cis~cis e~
    e1

    fis1 \glissando
    e \glissando
    cis4. cis8 cis cis~cis e~
    e4 d2.

    % Verse Three
    %=====
    cis8 b cis4 r8 b a b
    cis4 r8 e d cis b a
    b a b4 r8 a gis a 
    b4. d8 cis b a gis
    a gis a4~a8 a fis gis
    a4 r8 a a b~b a
    a4 gis2.
    cis2. r4

  }
}

bassMusic = {
  \tripletFeel 8 \relative c {
    %Intro
    %=====
    r4

    r1
    r2. r8 cis,
    fis4 fis fis fis
    fis fis fis fis
     
    % Verse One
    %=====
    fis1
    fis2. fis4
    e1
    e2. e4
    d1
    d2. d4
    cis1
    cis2. cis4

    fis1
    fis2. fis4
    e1
    e2. e4
    d1
    d2. d4
    cis1
    cis2. r4

   % Chorus
   %=====
   fis4 fis fis fis
   cis cis cis cis 
   fis fis fis fis 
   a, a a a

   fis'4 fis fis fis8 e
   cis4 cis cis cis8 e
   fis4 fis fis fis4
   a,2 b

   % Verse Two
    %=====
    fis'1
    fis2. fis4
    e1
    e2. e4
    d1
    d2. d4
    cis1
    cis2. r4
    
    % Chorus
   %=====
   fis4 fis fis fis
   cis cis cis cis 
   fis fis fis fis 
   a, a a a

   fis'4 fis fis fis8 e
   cis4 cis cis cis8 e
   fis4 fis fis fis4
   a,2 b

   % Verse Three
    %=====
    fis'1
    fis2. fis4
    e1
    e2. e4
    d1
    d2. d4
    cis1
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
  bah doom bah doh dah bah 
  doom bah doom dah bah dah
  doom bah doh dah
  bah doom doh doom

  % Verse One
  %=====
  Im- a- gine me and you, I do
  I think a- bout you day and night, it's on- ly right __
  To think a- bout the girl you love and hold her tight
  So hap- py to- ge- ther __

  If I should call you up, in- vest a dime
  And you say you be- long to me, and ease__ my mind
  I- ma- gine- how the world could be, __ so ve- ry fine
  So hap- py to- ge- ther
  
  doh

}

tenorText = \lyricmode{
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

bassText = \lyricmode{
  bah
  doh doh doh doh
  doh doh doh bah

  doh
  doh bah
  doh
  doh bah

  doh
  doh bah
  doh
  doh bah

  doh
  doh bah
  doh
  doh bah

  doh
  doh bah
  doh
  doh 

  bah bah bah bah 
  bah bah bah bah
  bah bah bah bah 
  bah bah bah bah

  bah bah bah bah da
  bah bah bah bah da
  bah bah bah bah
  bah dah
}

\score {
  \transpose c c'{%as{
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
    
    \new Staff = "Test" <<>>
    >>
  >>
  }
  \layout {
    \context {
      \Score 
      \override LyricSpace.minimum-distance = #2
      \RemoveEmptyStaves
      % Uncomment the next line if you want to hide empty staves even on the very first system:
      %\override VerticalAxisGroup.remove-first = ##t
    }
  }

  \midi {}

}

