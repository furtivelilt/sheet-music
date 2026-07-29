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
  Don't come back __ go! dah
  
  % Bridge
  %=====
  Ooh __
  Oh __
  Oh __
  Ah __

  % Refrain
  %=====
  doh bah doh 
  no more, no more, no more, no more
  oh bah lah bah doh bah doh bah doh doh bah doh bah doh bah doh bah doh

  % Verse One
  %=====
  Ooh __ Ooh
  Oh __ Oh
  Oh __ Oh
  Ah __ Ah

  % Refrain
  %=====
  doh bah doh 
  no more, no more, no more, no more
  oh bah lah bah doh bah doh bah doh doh bah doh bah doh bah doh bah doh
  Jack
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
  Don't come back __ go! bah

  % Bridge
  %=====
  Hit the road oh jack oh jack
  Hit the road and don't come back
  Hit the road oh jack oh ja' bah lah bah dah
  Hit the road and don't come back

  %== Refrain
  Hit the road Jack
  and don't you come back
  doh __ doh doh doh bah doom hit the road Jack and don't you come back no more
  doh doh bah doh bah doh

  % Verse One
  %=====
  Now hit the road
  Hit the road Jack
  Hit the road
  Hit the road Jack
  Hit the road
  Hit the road Jack
  Hit the road
  Hit the road

  %== Refrain
  Hit the road Jack
  and don't you come back
  doh __ doh doh doh bah doom hit the road Jack and don't you come back no more
  doh doh bah doh bah doh hit the
  road Jack

}

tenorText = \lyricmode{
  % Intro
  %=====
  loh loh loh loh loh loh loh bah dah
  loh loh loh loh loh loh loh loh
  loh loh loh loh loh loh loh loh
  loh loh loh loh loh loh loh loh
  loh loh loh loh loh loh lah lah __ bam bah __ go! dah

  % Bridge
  %=====
  Hit the road oh jack oh jack
  Hit the road and don't come back
  Hit the road oh jack oh jack
  Hit the road and don't come back

  % Refrain
  %=====
  loh bah doh
  loh bah doh
  loh bah doh bah
  loh bah doh
  loh bah doh
  loh what you say?

  % Verse one
  %=====
  Old wo- man old wo- man, don't treat me so mean
  Loh Loh Loh I 
  Guess If __ you say so __
  Loh ba go

  % Refrain
  %=====
  loh bah doh
  loh bah doh
  loh bah doh bah
  loh bah doh
  loh bah doh
  loh what you say?
  
  loh

  the road Jack

}

bassText = \lyricmode{
  % Intro
  %=====
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh bah
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh bam bah __ go! bah

  % Bridge
  %=====
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh 

  % Refrain
  %=====
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh what you say?

  % Verse One
  %=====
  doh doh doh doh doh doh doh you're the 
  mea- nest old wo- man that I've ev- er seen.
  Doh doh doh doh doh doh doh I
  Have to pack my things and go.

  % Refrain
  %=====
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh doh doh doh
  doh doh doh doh doh what you say?

  Hit the road Jack
}

bassMain = {
 \relative c{
  bes4 bes as as ges ges f f
 }
}

sopranIntro = {
  \tripletFeel 8 \relative c''{
    r1 r r2 as2~as2.. r8
    bes2 f~f1 \breathe
    f2 as bes f
    as1~as2.~as4 \breathe
    f2 as c2(as2)~
    as2 bes4. bes8-.
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
    es2 d4 des8 r
  }
}

tenorIntro = {
  \tripletFeel 8 \relative c{ 
    r1 r f4 f es es | des8 es des4 f es8 r
    des4 des c c | des des es es |
    f4 f es es | des8 es des4 c c |
    des4 des c c | des des es es |
    f f es es | des es8 f8~f8 ges8 f4~
    f2 f4. f8-.
  }
}

bassIntro = {
  \tripletFeel 8 \relative c{ 
    \bassMain bes4 bes as as ges ges8 f4.~f8 r
    \repeat unfold 3{\bassMain}
    bes4 bes as as bes as8 ges8~ges8 r8 des'4~
    des2 bes4 bes8 r
  }
  
}

sopranBridge = {
  \tripletFeel 8 \relative c'{
    des1~
    des \breathe
    es~
    es  \breathe
    f~
    f \breathe
    as~
    as2. r4
  }
}

altBridge = {
  \tripletFeel 8 \relative c'{
    bes4 des8 bes~bes4 as8 bes~bes4 as8 c~c(as4.) \breathe
    bes4 des8 bes~bes4 as8 bes~bes4 des8 bes~bes2 \breathe 
    bes4 des8 bes~bes4 as8 bes~bes4 as8 es' es8 des8 c8 as8 \breathe
    bes4 des8 bes~bes4 as8 bes~bes4 bes8 des r4 
    es8 des 
  }
}

tenorBridge = {
  \tripletFeel 8 \relative c{
    des4 es8 f~f4 ges8 f~f4 es8 f~f2 \breathe
    des4 es8 f~f4 es8 es~es4 bes8 bes~bes2 \breathe
    des4 es8 f~f4 ges8 f~f4 es8 f~f2 \breathe
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
    es8(des bes) bes~bes4. bes8 
    des des es(des) es r4 bes8~
    bes2 des4 es 
    f ges8 f8~f8 r8 es des 
    es(des bes) bes~bes4. bes8
    des des es(des) es4 bes8 bes~
    bes4 as4. r8 es'8 des es des~des4 c4
    }
}

tenorRef = {
  \tripletFeel 8 \relative c'{
    as8 as~as f~f2~
    f2. r4

    as8 as~as f~f2
    es8 f~f f~f4 es \breathe

    as8 as~as f~f2~
    f2. r4

    as8 as~as f~f2
    bes8 as f as~as4
  }
}

bassRef = {
  \tripletFeel 8 \relative c{
    \repeat unfold 3{\bassMain}
    bes4 bes as as ges8 ges ges f8~f2 \breathe
  }
}

sopranVerseOne = {
  \tripletFeel 8 \relative c'{
  f1~f2. a4 bes1~bes2 r4 ges4
  f1~f2. a4 bes1~bes2 r4 ges4
  }
}

altVerseOne = {
  \tripletFeel 8 \relative c'{
    des4
    r4 es8 es es4 r 
    es8 es es4 r bes 
    
    r4 es8 es es4 r 
    es8 es es4 bes r 

    r4 es8 es es4 r 
    es8 es es4 r bes 
    
    r4 es8 es es4 r 
    es8 es es4 r4 es8 des 
    
  }
}

tenorVerseOne = {
  \tripletFeel 8 \relative c{
    bes'4
    bes8 f f4 es8 des es4
    es8 des es4 f4 r
    as2 f~f es4 r8 bes
    des4 es8(des) es4 des4 f(bes2) r4

    as2.  es8 f~f1 \breathe
  }
}

bassVerseOne = {
  \tripletFeel 8 \relative c{
  bes4 bes as as ges ges f
  bes8 bes f' f es4 des8 bes8 bes bes des4 bes8 bes~bes4. r8
  bes4 bes as as ges ges f r8 es' 
  f f es es des4 bes8 bes8~bes1 \breathe
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
          \sopranVerseOne
          \repeat volta 2{\sopranRef}
          \tripletFeel 8 \relative c' {
            r4. des8~des2~
            des1 \breathe

            r4. f8~f2~
            f1 \breathe

            r4. es8~es2~
            es1 \breathe

            r4. es8~es2~
            es1 \breathe

            r4. f8~f2~
            f1 \breathe

            r4. es8~es2~
            es1 \breathe

            r4. es8~es2~
            es1 \breathe

            r4. ges4 f4. \fermata

          }
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
          \repeat volta 2{{\altRef \tripletFeel 8 \relative c'{es8 des} }}
          \tripletFeel 8 \relative c' {
            r4 as8 as~as2~
            as1 \breathe

            r4 des8 des~des2~
            des1 \breathe

            r4 as8 as~as2~
            as1 \breathe

            r4 c8 c~c2~
            c1 \breathe

            r4 des8 des~des2~
            des1 \breathe

            r4 c8 c~c2~
            c1 \breathe

            r4 des8 des~des2~
            des2 c \breathe

            r4 es2
            des4 \fermata
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
          \repeat volta 2{{\tenorRef \tripletFeel 8 \relative c'{as4 \breathe}}}
          \tripletFeel 8 \relative c {
            r8 es es es~es2~
            es1 \breathe

            r8 as as as~as2~
            as1 \breathe

            r8 des, des des~des2~
            des1 \breathe

            r8 as' as as as2~
            as1 \breathe

            r8 as as as as2~
            as1 \breathe

            r8 as as as as2~
            as1 \breathe

            r8 bes bes bes4. as4~
            as4 as2.

            r8 as2.. \fermata
            
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
          \bassIntro
          \bassBridge
          \bassRef
          \bassVerseOne
          \repeat volta 2{\bassRef}
          \tripletFeel 8 \relative c{
            ges8 ges ges ges~ges2~
            ges1 \breathe

            f8 f f f~f2~
            f1 \breathe

            ges8 ges ges ges~ges2~
            ges1 \breathe

            f8 f f f~f2~
            f1 \breathe

            bes8 bes bes bes~bes2~
            bes1 \breathe

            des8 des des des~des2~
            des1 \breathe

            bes8 bes bes bes~bes2 
            as1 \breathe

            des \fermata
          }
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

