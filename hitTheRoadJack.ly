\version "2.26.0"
\include "swing.ly"

\header {
  title = "Hit the road jack"
  composer = "Ray Charles"
  arranger = "Arr. B. Lockmann"
  subtitle= \markup {\italic " ''Ich seh schwarz, wie Ray Charles'' "}
}

bassMain = {
 \relative c{
  bes4 bes as as ges ges f f
 }
}

sopranIntro = {
  \tripletFeel 8 \relative c''{
    \repeat volta 2{}
    \alternative{{r1 r} {r2 as2~as2.. r8}}
    bes2 f~f1
    f2 as bes f
    as1~as2.~as4
    f2 as c2(as2)~
    as2 bes4. bes8
  }
  \addlyrics{
  Oh
  Hit the __
  Hit the road jack
  Don't __
  Don't come back __ go! ba
  }
}

altIntro ={
  \tripletFeel 8 \relative c'{
    \repeat volta 2{}
    \alternative{{r1 r} {r1 es2.. r8}}
    r4 es8 es es4 r4
    es8 es es4 r8 bes4.
    r4 es8 es es4 r4
    es4 f c2
    r4 es8 es es4 r4
    es8 es es4 r8 bes4.
    r4 es8 es es4 r4
    es4 f es2~
    es2 d4. des8
  }
  \addlyrics{
        Oh __
        Hit the road
        Hit the road jack
        Hit the road 
        Don't come back
        Hit the road
        Hit the road jack
        Hit the road 
        Don't come back __ go! ba
  }
}

tenorIntro = {
  \tripletFeel 8 \relative c{ 
    \repeat volta 2{}
    \alternative{{r1 r} {f4 f es es | des8 es des4 f es8 r}}
    des4 des c c | des des es es |
    f4 f es es | des8 es des4 c c |
    des4 des c c | des des es es |
    f f es es | des es8 f8~f8 ges8 f4~
    f2 f4. f8
  }
  \addlyrics{
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo la la __ bam ba __ go! ba
  } 
}

bassIntro = {
  \tripletFeel 8 \relative c{ 
    \repeat volta 2{}
    \alternative{{\bassMain} {bes4 bes as as ges ges8 f4.~f8 r}}
    \repeat unfold 3{\bassMain}
    bes4 bes as as bes as8 ges8~ges8 r8 des'4~
    des2 bes4. bes8
  }
  \addlyrics{
    do do do do do do do do
    do do do do do do ba
    do do do do do do do do
    do do do do do do do do
    do do do do do do do do
    do do do do do do bam ba __ go! ba
  }
}

sopranBridge = {}
altBridge = {}
tenorBridge = {}

bassBridge = {
  \tripletFeel 8 \relative c{
    \repeat unfold 3 {\bassMain}
    bes4 bes c c des des c c
  }
  \addlyrics{
      do do do do do do do do
      do do do do do do do do
      do do do do do do do do
      do do do do do do do do
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
      { 
        \sopranIntro
        \sopranBridge
      }
    >>

    \new Staff = "Alt" <<
      \set Staff.instrumentName = "Alt"
      \global
      \clef "treble"
      {
        \altIntro
        \altBridge
      }
    >>
    
    \new Staff = "Tenor" <<
      \set Staff.instrumentName = "Tenor"
      \global
      \clef "bass"
      {
        \tenorIntro
        \tenorBridge
      }
    >>

    \new Staff = "Bass" <<
      \set Staff.instrumentName = "Bass"
      \global
      \clef "bass"
      {
        \bassIntro
        \bassBridge
      }
    >>
  >>
}
  \layout {}
  \midi {}

}

