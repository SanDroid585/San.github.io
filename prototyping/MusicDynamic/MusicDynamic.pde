

//
//
//

//Static Music

//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 2;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs] ;
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;
//
void setup() {

  //Display
  fullScreen(); //displayWidth //displayHeight
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //


  int paperWidth = 131;
  int paperHeight = 197;


background(190,60,70);
stroke(120,200,255);
strokeWeight(3);
fill(15,15,18);


  float songTitleDivX = appWidth * 25 / paperWidth;
  float songTitleDivY = appHeight * 5 / paperHeight;
  float songTitleDivWidth = appWidth * 80 / paperWidth;
  float songTitleDivHeight = appHeight * 12 / paperHeight;

  float lyricsDivX = appWidth * 5 / paperWidth;
  float lyricsDivY = appHeight * 25 / paperHeight;
  float lyricsDivWidth = appWidth * 50 / paperWidth;
  float lyricsDivHeight = appHeight * 60 / paperHeight;

  float songCoverDivX = appWidth * 60 / paperWidth;
  float songCoverDivY = appHeight * 25 / paperHeight;
  float songCoverDivWidth = appWidth * 66 / paperWidth;
  float songCoverDivHeight = appHeight * 60 / paperHeight;

  float ExitButtonDivX = appWidth * 123 / paperWidth;
  float ExitButtonDivY = appHeight * 5 / paperHeight;
  float ExitButtonDivWidth = appWidth * 12 / paperWidth;
  float ExitButtonDivHeight = appHeight * 12 / paperHeight;

  float searchButtonDivX = appWidth * 114 / paperWidth;
  float searchButtonDivY = appHeight * 5 / paperHeight;
  float searchButtonDivWidth = appWidth * 12 / paperWidth;
  float searchButtonDivHeight = appHeight * 12 / paperHeight;

  float menuButtonDivX = appWidth * 5 / paperWidth;
  float menuButtonDivY = appHeight * 5 / paperHeight;
  float menuButtonDivWidth = appWidth * 12 / paperWidth;
  float menuButtonDivHeight = appHeight * 12 / paperHeight;

  float artistNameDivX = appWidth * 95 / paperWidth;
  float artistNameDivY = appHeight * 95 / paperHeight;
  float artistNameDivWidth = appWidth * 31 / paperWidth;
  float artistNameDivHeight = appHeight * 10 / paperHeight;

  float artistPictureDivX = appWidth * 95 / paperWidth;
  float artistPictureDivY = appHeight * 107 / paperHeight;
  float artistPictureDivWidth = appWidth * 31 / paperWidth;
  float artistPictureDivHeight = appHeight * 28 / paperHeight;

  float aboutAuthorDivX = appWidth * 95 / paperWidth;
  float aboutAuthorDivY = appHeight * 137 / paperHeight;
  float aboutAuthorDivWidth = appWidth * 31 / paperWidth;
  float aboutAuthorDivHeight = appHeight * 18 / paperHeight;

  float controlsBoxDivX = appWidth * 5 / paperWidth;
  float controlsBoxDivY = appHeight * 95 / paperHeight;
  float controlsBoxDivWidth = appWidth * 88 / paperWidth;
  float controlsBoxDivHeight = appHeight * 65/ paperHeight;

  // --- ORGANIZED BUTTONS ---
  float previousSongDivX = appWidth * 10 / paperWidth;
  float previousSongDivY = appHeight * 105 / paperHeight;
  float previousSongDivWidth = appWidth * 12 / paperWidth;
  float previousSongDivHeight = appHeight * 12 / paperHeight;

  float rewindDivX = appWidth * 22 / paperWidth;
  float rewindDivY = appHeight * 105 / paperHeight;
  float rewindDivWidth = appWidth * 12 / paperWidth;
  float rewindDivHeight = appHeight * 12 / paperHeight;

  float back5DivX = appWidth * 81 / paperWidth;
  float back5DivY = appHeight * 105 / paperHeight;
  float back5DivWidth = appWidth * 12 / paperWidth;
  float back5DivHeight = appHeight * 12 / paperHeight;

  float pauseDivX = appWidth * 51 / paperWidth;
  float pauseDivY = appHeight * 102 / paperHeight;
  float pauseDivWidth = appWidth * 16 / paperWidth;
  float pauseDivHeight = appHeight * 16 / paperHeight;

  float playDivX = appWidth * 35 / paperWidth;
  float playDivY = appHeight * 102 / paperHeight;
  float playDivWidth = appWidth * 16 / paperWidth;
  float playDivHeight = appHeight * 16 / paperHeight;

  float stopDivX = appWidth * 71 / paperWidth;
  float stopDivY = appHeight * 128 / paperHeight;
  float stopDivWidth = appWidth * 12 / paperWidth;
  float stopDivHeight = appHeight * 12 / paperHeight;

  float skip5DivX = appWidth * 69 / paperWidth;
  float skip5DivY = appHeight * 105 / paperHeight;
  float skip5DivWidth = appWidth * 12 / paperWidth;
  float skip5DivHeight = appHeight * 12 / paperHeight;

  float nextSongDivX = appWidth * 33 / paperWidth;
  float nextSongDivY = appHeight * 128 / paperHeight;
  float nextSongDivWidth = appWidth * 12 / paperWidth;
  float nextSongDivHeight = appHeight * 12 / paperHeight;

  float loopDivX = appWidth * 13 / paperWidth;
  float loopDivY = appHeight * 128 / paperHeight;
  float loopDivWidth = appWidth * 12 / paperWidth;
  float loopDivHeight = appHeight * 12 / paperHeight;

  float stopLoopDivX = appWidth * 52 / paperWidth;
  float stopLoopDivY = appHeight * 128 / paperHeight;
  float stopLoopDivWidth = appWidth * 12 / paperWidth;
  float stopLoopDivHeight = appHeight * 12 / paperHeight;

  float volumeDivX = appWidth * 13 / paperWidth;
  float volumeDivY = appHeight * 145 / paperHeight;
  float volumeDivWidth = appWidth * 70 / paperWidth;
  float volumeDivHeight = appHeight * 9 / paperHeight;

  float favouritesDivX = appWidth * 10 / paperWidth;
  float favouritesDivY = appHeight * 160 / paperHeight;
  float favouritesDivWidth = appWidth * 25 / paperWidth;
  float favouritesDivHeight = appHeight * 25 / paperHeight;

  float songsDivX = appWidth * 50 / paperWidth;
  float songsDivY = appHeight * 160 / paperHeight;
  float songsDivWidth = appWidth * 25 / paperWidth;
  float songsDivHeight = appHeight * 25 / paperHeight;

  float playlistsDivX = appWidth * 90 / paperWidth;
  float playlistsDivY = appHeight * 160 / paperHeight;
  float playlistsDivWidth = appWidth * 25 / paperWidth;
  float playlistsDivHeight = appHeight * 25 / paperHeight;



  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight);
  rect(songCoverDivX, songCoverDivY, songCoverDivWidth, songCoverDivHeight);
  rect(searchButtonDivX, searchButtonDivY, searchButtonDivWidth, searchButtonDivHeight);
  rect(menuButtonDivX, menuButtonDivY, menuButtonDivWidth, menuButtonDivHeight);

  rect(artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight);
  rect(artistPictureDivX, artistPictureDivY, artistPictureDivWidth, artistPictureDivHeight);
  rect(aboutAuthorDivX, aboutAuthorDivY, aboutAuthorDivWidth, aboutAuthorDivHeight);

  rect(controlsBoxDivX, controlsBoxDivY, controlsBoxDivWidth, controlsBoxDivHeight);

  rect(previousSongDivX, previousSongDivY, previousSongDivWidth, previousSongDivHeight);
  rect(back5DivX, back5DivY, back5DivWidth, back5DivHeight);
  rect(pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight);
  rect(skip5DivX, skip5DivY, skip5DivWidth, skip5DivHeight);
  rect(nextSongDivX, nextSongDivY, nextSongDivWidth, nextSongDivHeight);

  rect(volumeDivX, volumeDivY, volumeDivWidth, volumeDivHeight);

  rect(ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight);

  rect(favouritesDivX, favouritesDivY, favouritesDivWidth, favouritesDivHeight);
  rect(songsDivX, songsDivY, songsDivWidth, songsDivHeight);
  rect(playlistsDivX, playlistsDivY, playlistsDivWidth, playlistsDivHeight);

  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight);
  rect(rewindDivX, rewindDivY, rewindDivWidth, rewindDivHeight);
  rect(loopDivX, loopDivY, loopDivWidth, loopDivHeight);
  rect(stopLoopDivX, stopLoopDivY, stopLoopDivWidth, stopLoopDivHeight);





  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependanciesFolder = "Dependecies";
  //
  String[] songNames = new String[numberOfSongs];
  songNames[currentSong]= "Martin & Gina";
  currentSong++;
  songNames[currentSong]= "Rapstar";
  currentSong=0;


  String songName = "Martin & Gina";
  String songname1 = "Rapstar";
  String soundEffect = "Click";
  String fileExtention = ".mp3";
  //
  String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open;
  String file;
  for (int i=0; i<numberOfSongs; i++) {
    //CAUTION remove Readme.txt
    file = musicDirectory + songNames[i] + fileExtention;
    println("Inside for file:", file);
    playList [ i ] = minim.loadFile( file );
    playListMetaData[ i ] = playList[ i ].getMetaData();
    // Caution not current song var
    println(currentSong);
  }

  file = soundEffectsDirectory + soundEffect + fileExtention;
  soundEffects[currentSong] = minim.loadFile(file);

  //
  for (int i=0; i<numberOfSongs; i++) {
    if ( playList[i]==null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      exit();
      //

      println("Music Pathway", musicDirectory);
      println("Full Music File Pathway", file);
    }
  }

  if ( soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    println("The Sound Effects did not load properly");
    printArray(soundEffects);
    exit();
  }
  float fontsize = 40;

  PFont font;
  String Artistname = "polo g";

  //

  float Fontsize1 = fontsize*1/2;
  float Fontsize2 = fontsize*1/3;
  float Fontsize3 = fontsize*1/2;
  float Fontsize4 = fontsize*2/3;

  String Black_Italik = "SegoeUIBlack-Italic";
  PFont titleFont;
  titleFont = createFont(Black_Italik, fontsize);
  //
  color resetink = #FFFFFF;
  color yellowink = #FCE800;
  color redink = #C4312A;
  color blueink = #113DEA;
  fill(yellowink);
  textAlign (CENTER, CENTER);

  float constantDecrease = 0.99;
  int iWhile = 0;
  textFont(titleFont, fontsize);
  while ( textWidth(Artistname) > artistNameDivWidth) {
    iWhile++;
    if (iWhile>100) {
      println("Infinite WHILE Loop");
      exit();
    }
    fontsize *= constantDecrease;
    textFont(titleFont, fontsize);
  }

  String title = "Martin & Gina" ;
  text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );

  String Lyrics = "Lyrics" ;
  textFont(titleFont, Fontsize4);
  text( Lyrics, lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight );



//name is somewhere else
  textFont(titleFont, Fontsize3);
  text( Artistname, artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight );

   String AboutAthour = "About author" ;
  textFont(titleFont, Fontsize2);
  text( AboutAthour, aboutAuthorDivX, aboutAuthorDivY, aboutAuthorDivWidth, aboutAuthorDivHeight );
  
String X ="X";
 textFont(titleFont, Fontsize1);
text( X, ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight);

}
//




//}//End Setup
//
void draw() {
  //playList[currentSong].play();
  //soundEffects[currentSong].play();
}
//
void mousePressed () {
  soundEffects[currentSong].rewind();
  soundEffects[currentSong].play();
}
// End Mouse Pressed
void keyPressed () { /* Simple Play
 playList[currentSong].play();
 currentSong++;
 */
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
  if ( key=='O' || key=='o' ) { // Pause
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1);
  if ( key=='K' || key=='k' ) playList[currentSong].loop();
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 5000 );
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -5000 );
  if ( key=='W' || key=='w' ) {
    if ( playList[currentSong].isMuted() ) {
      playList[currentSong].unmute();
    } else {
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit();
  if ( key=='Q' || key=='q' ) exit();
  //
  if ( key=='N' || key=='n' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      playList[currentSong].rewind();
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
    }
  }

  if ( key=='B' || key=='b' ) { // PREVIOUS
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      playList[currentSong].play();
    } else {
      playList[currentSong].rewind();
      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }

  if ( key=='Y' || key=='y' ) {
    if ( playList[currentSong].isPlaying() ) {
      
        playList[currentSong].pause();
        playList[currentSong].rewind();
      }
      currentSong = int(random(numberOfSongs));
    }
}
    //End MAIN Program
