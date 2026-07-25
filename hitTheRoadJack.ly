\version "2.26.0"
\include "swing.ly"

\header {
  title = "Hit the road jack"
  composer = "Ray Charles"
  arranger = "Arr. B. Lockmann"
  subtitle= \markup {\italic " ''Ich seh schwarz, wie Ray Charles'' "}
}

sopranIntro = {
  \tripletFeel 8 \relative c''{
    bes2 f~f1
    f2 as bes f
    as1~as2.~as4
    f2 as c2(as2)~
    as2 bes2
  }
  \addlyrics{
  Hit the __
  Hit the road jack
  Don't __
  Don't come back __ go!
  }
}

altIntro ={
  \tripletFeel 8 \relative c'{
    r4 es8 es es4 r4
    es8 es es4 r8 bes4.
    r4 es8 es es4 r4
    es4 f c2
    r4 es8 es es4 r4
    es8 es es4 r8 bes4.
    r4 es8 es es4 r4
    es4 f es2~
    es2 d4(des)
  }
  \addlyrics{
        Hit the road
        Hit the road jack
        Hit the road 
        Don't come back
        Hit the road
        Hit the road jack
        Hit the road 
        Don't come back __ go!
  }
}

tenorIntro = {
  \tripletFeel 8 \relative c{ 
    des4 des c c | des des es es |
    f4 f es es | des8 es des4 c c |
    des4 des c c | des des es es |
    f f es es | des es8 f8~f8 ges8 f4~
    f2 f2
  }
  \addlyrics{
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo lo lo
      lo lo lo lo lo lo la la __ bam ba __ go!
  } 
}

bassIntro = {
  \tripletFeel 8 \relative c{ 
    bes4 bes as as ges ges f f
    bes4 bes as as ges ges f f
    bes4 bes as as ges ges f f
    bes4 bes as as bes as8 ges8~ges8 r8 des'4~
    des2 bes2
  }
  \addlyrics{
    do do do do do do do do
    do do do do do do do do
    do do do do do do do do
    do do do do do do bam ba __ go!
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

