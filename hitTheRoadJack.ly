\version "2.26.0"
\include "swing.ly"

\header {
  title = "Hit the road jack"
  composer = "Ray Charles"
  arranger = "Arr. B. Lockmann"
  subtitle= \markup {\italic " ''Ich seh' schwarz, wie Ray Charles'' "}
}

sopranText = \lyricmode{
  % Intro
  %=====
  Oh
  Hit the __
  Hit the road jack
  Don't __
  Don't come back __ go! da
  
  % Bridge
  %=====
  Ooh __
  Oh __
  Oh __
  Ah __

  % Refrain
  %=====
  do ba do 
  no more, no more, no more, no more
  oh ba da ba do ba do ba do do ba do ba do ba do ba do
}

altText = \lyricmode{
  % Intro
  %=====
  Oh __
  Hit the road
  Hit the road jack
  Hit the road 
  Don't come back
  Hit the road
  Hit the road jack
  Hit the road 
  Don't come back __ go! ba

  % Bridge
  %=====
  Hit the road oh jack oh jack
  Hit the road and don't come back
  Hit the road oh jack oh ja' ba da ba da
  Hit the road and don't come back

  %== Refrain
  Hit the road Jack
  and don't you come back
  do __ do do do ba doom oh hit the road Jack and don't you come back no more
  do do ba do ba do

}

tenorText = \lyricmode{
  % Intro
  %=====
  lo lo lo lo lo lo lo ba da
  lo lo lo lo lo lo lo lo
  lo lo lo lo lo lo lo lo
  lo lo lo lo lo lo lo lo
  lo lo lo lo lo lo la la __ bam ba __ go! da

  % Bridge
  %=====
  Hit the road oh jack oh jack
  Hit the road and don't come back
  Hit the road oh jack oh jack
  Hit the road and don't come back

  % Refrain
  %=====
  lo ba do
  lo ba do
  lo ba do ba
  lo ba do
  lo ba do
  lo do ba do
}

bassText = \lyricmode{
  % Intro
  %=====
  do do do do do do do do
  do do do do do do ba
  do do do do do do do do
  do do do do do do do do
  do do do do do do do do
  do do do do do do bam ba __ go! ba

  % Bridge
  %=====
  do do do do do do do do
  do do do do do do do do
  do do do do do do do do
  do do do do do do do 

  % Refrain
  %=====
  do do do do do do do do
  do do do do do do do do
  do do do do do do do do
  do do do do do do do
}

bassMain = {
 \relative c{
  bes4 bes as as ges ges f f
 }
}

sopranIntro = {
  \tripletFeel 8 \relative c''{
    r1 r r2 as2~as2.. r8
    bes2 f~f1
    f2 as bes f
    as1~as2.~as4
    f2 as c2(as2)~
    as2 bes4. bes8
  }
}

altIntro ={
  \tripletFeel 8 \relative c'{
    r1 r r es2.. r8
    r4 es8 es es4 r4
    es8 es es4 r8 bes4.
    r4 es8 es es4 r4
    es4 f c2
    r4 es8 es es4 r4
    es8 es es4 r8 bes4.
    r4 es8 es es4 r4
    es4 f es2~
    es2 d4 des4
  }
}

tenorIntro = {
  \tripletFeel 8 \relative c{ 
    r1 r f4 f es es | des8 es des4 f es8 r
    des4 des c c | des des es es |
    f4 f es es | des8 es des4 c c |
    des4 des c c | des des es es |
    f f es es | des es8 f8~f8 ges8 f4~
    f2 f4. f8
  }
}

bassIntro = {
  \tripletFeel 8 \relative c{ 
    \bassMain bes4 bes as as ges ges8 f4.~f8 r
    \repeat unfold 3{\bassMain}
    bes4 bes as as bes as8 ges8~ges8 r8 des'4~
    des2 bes4 bes4
  }
  
}

sopranBridge = {
  \tripletFeel 8 \relative c'{
    des1~
    des
    es~
    es
    f~
    f
    as~
    as2. r4
  }
}

altBridge = {
  \tripletFeel 8 \relative c'{
    bes4 des8 bes~bes4 as8 bes~bes4 as8 c~c(as4.)
    bes4 des8 bes~bes4 as8 bes~bes4 des8 bes~bes2
    bes4 des8 bes~bes4 as8 bes~bes4 as8 es' es8 des8 c8 as8
    bes4 des8 bes~bes4 as8 bes~bes4 bes8 des r4
    % es des
  }
}

tenorBridge = {
  \tripletFeel 8 \relative c{
    des4 es8 f~f4 ges8 f~f4 es8 f~f2
    des4 es8 f~f4 es8 es~es4 bes8 bes~bes2
    des4 es8 f~f4 ges8 f~f4 es8 f~f2
    des4 es8 f~f4 es8 es~es4 es8 es~es4 r
  }
}

bassBridge = {
  \tripletFeel 8 \relative c{
    \repeat unfold 3 {\bassMain}
    bes4 bes c c des bes c r
  }
}

sopranRef = {
  \tripletFeel 8 \relative c'{
    as'4 bes2.
    f2 r4 des4
    f f bes bes des des8 bes~bes des4.
    r8 a4 bes2 bes8
    as f as f f4 f8 f8~
    f4 es8 des es des4 f8
    f2 es2 \breathe
  }
}

altRef = {
  \tripletFeel 8 \relative c'{
    es8 des 
    es(des bes) bes~bes4. bes8 
    des des es(des) es r4 bes8~
    bes2 des4 es 
    f ges8 f8~f8 f8 es des 
    es(des bes) bes~bes4. bes8
    des des es(des) es4 bes8 bes~
    bes4 as2 es'8 des es des~des4 c4
    }
}

tenorRef = {
  \tripletFeel 8 \relative c'{
    as8 as~as f~f2~
    f2. r4

    as8 as~as f~f2
    es8 f~f f~f4 es

    as8 as~as f~f2~
    f2. r4

    as8 as~as f~f2
    bes8 as f as~as4
  }
}

bassRef = {
  \tripletFeel 8 \relative c{
    \repeat unfold 3{\bassMain}
    bes4 bes as as ges ges8 f8~f2 \breathe
  }
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
      \new Voice = "Sopran" {
        { 
          \sopranIntro
          \sopranBridge
          \sopranRef
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
          \bassIntro
          \bassBridge
          \bassRef
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
  \layout {}
  \midi {}

}

