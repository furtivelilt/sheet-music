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
  Don't come back __ go! da
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
    es2 d4 des4
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
      lo lo lo lo lo lo lo ba da
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo la la __ bam ba __ go! da
  } 
}

bassIntro = {
  \tripletFeel 8 \relative c{ 
    \repeat volta 2{}
    \alternative{{\bassMain} {bes4 bes as as ges ges8 f4.~f8 r}}
    \repeat unfold 3{\bassMain}
    bes4 bes as as bes as8 ges8~ges8 r8 des'4~
    des2 bes4 bes4
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

sopranBridge = {
  \tripletFeel 8 \relative c'{
    des1~
    des
    es~
    es
    f~
    f
    as~
    as
  }

  \addlyrics{
  Ooh __
  Oh __
  Oh __
  Ah __
  }

}

altBridge = {
  \tripletFeel 8 \relative c'{
    bes4 des8 bes~bes4 as8 bes~bes4 as8 c~c(as4.)
    bes4 des8 bes~bes4 as8 bes~bes4 des8 bes~bes2
    bes4 des8 bes~bes4 as8 bes~bes4 as8 es' es8 des8 c8 as8
    bes4 des8 bes~bes4 as8 bes~bes4 bes8 des~des4
    es8 des
  }
  \addlyrics{
    Hit the road oh jack oh jack
    Hit the road and don't come back
    Hit the road oh jack oh ja' ba da ba da
    Hit the road and don't come back
    Hit the
  }
}

tenorBridge = {
  \tripletFeel 8 \relative c{
    des4 es8 f~f4 ges8 f~f4 es8 f~f2
    des4 es8 f~f4 es8 es~es4 bes8 bes~bes2
    des4 es8 f~f4 ges8 f~f4 es8 f~f2
    des4 es8 f~f4 es8 es~es4 es8 es~es2    
  }
  \addlyrics{
    Hit the road oh jack oh jack
    Hit the road and don't come back
    Hit the road oh jack oh jack
    Hit the road and don't come back
  }
}

bassBridge = {
  \tripletFeel 8 \relative c{
    \repeat unfold 3 {\bassMain}
    bes4 bes c c des bes c c
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

