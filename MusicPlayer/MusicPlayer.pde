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
String [] songName = new String[numberOfSongs];
color yellowink, whiteink, resetink;
boolean isPaused= false;
boolean loopOnce = true;
boolean activateLoop ;


float LoopinfiniteDivX, LoopinfiniteDivY, LoopinfiniteDivWidth, LoopinfiniteDivHeight;
float previousSongDivX, previousSongDivY, previousSongDivWidth, previousSongDivHeight; //
float back5DivX, back5DivY, back5DivWidth, back5DivHeight; //
float nextSongDivX, nextSongDivY, nextSongDivWidth, nextSongDivHeight; //
float pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight; //
float playDivX, playDivY, playDivWidth, playDivHeight; //
float stopDivX, stopDivY, stopDivWidth, stopDivHeight;
float skip5DivX, skip5DivY, skip5DivWidth, skip5DivHeight;
float restartSongDivX, restartSongDivY, restartSongDivWidth, restartSongDivHeight;
float loopDivX, loopDivY, loopDivWidth, loopDivHeight;
float stopLoopDivX, stopLoopDivY, stopLoopDivWidth, stopLoopDivHeight;
float ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight;
float blackExitDivX, blackExitDivY, blackExitDivWidth, blackExitDivHeight;
float menuButtonDivX, menuButtonDivY, menuButtonDivWidth, menuButtonDivHeight;
float TrymeDivX, TrymeDivY, TrymeDivWidth, TrymeDivHeight;
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
//
void setup() {
  //Display
  fullScreen(); //displayWidth //displayHeight
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //


  int paperWidth = 131;
  int paperHeight = 197;

  background(#BC1717);





  songTitleDivX = appWidth * 25 / paperWidth;
  songTitleDivY = appHeight * 5 / paperHeight;
  songTitleDivWidth = appWidth * 80 / paperWidth;
  songTitleDivHeight = appHeight * 12 / paperHeight;

  float lyricsDivX = appWidth * 5 / paperWidth;
  float lyricsDivY = appHeight * 25 / paperHeight;
  float lyricsDivWidth = appWidth * 50 / paperWidth;
  float lyricsDivHeight = appHeight * 60 / paperHeight;

  float songCoverDivX = appWidth * 60 / paperWidth;
  float songCoverDivY = appHeight * 25 / paperHeight;
  float songCoverDivWidth = appWidth * 66 / paperWidth;
  float songCoverDivHeight = appHeight * 60 / paperHeight;

  ExitButtonDivX = appWidth * 123 / paperWidth;
  ExitButtonDivY = appHeight * 5 / paperHeight;
  ExitButtonDivWidth = appWidth * 12 / paperWidth;
  ExitButtonDivHeight = appHeight * 12 / paperHeight;

  float searchButtonDivX = appWidth * 114 / paperWidth;
  float searchButtonDivY = appHeight * 5 / paperHeight;
  float searchButtonDivWidth = appWidth * 12 / paperWidth;
  float searchButtonDivHeight = appHeight * 12 / paperHeight;

  menuButtonDivX = appWidth * 5 / paperWidth;
  menuButtonDivY = appHeight * 5 / paperHeight;
  menuButtonDivWidth = appWidth * 12 / paperWidth;
  menuButtonDivHeight = appHeight * 12 / paperHeight;

  float artistNameDivX = appWidth * 95 / paperWidth;
  float artistNameDivY = appHeight * 95 / paperHeight;
  float artistNameDivWidth = appWidth * 31 / paperWidth;
  float artistNameDivHeight = appHeight * 10 / paperHeight;

  TrymeDivX = appWidth * 95 / paperWidth;
  TrymeDivY = appHeight * 107 / paperHeight;
  TrymeDivWidth = appWidth * 31 / paperWidth;
  TrymeDivHeight = appHeight * 28 / paperHeight;

  float aboutAuthorDivX = appWidth * 95 / paperWidth;
  float aboutAuthorDivY = appHeight * 137 / paperHeight;
  float aboutAuthorDivWidth = appWidth * 31 / paperWidth;
  float aboutAuthorDivHeight = appHeight * 18 / paperHeight;

  float controlsBoxDivX = appWidth * 5 / paperWidth;
  float controlsBoxDivY = appHeight * 95 / paperHeight;
  float controlsBoxDivWidth = appWidth * 88 / paperWidth;
  float controlsBoxDivHeight = appHeight * 65/ paperHeight;

  // --- ORGANIZED BUTTONS ---
  previousSongDivX = appWidth * 10 / paperWidth;
  previousSongDivY = appHeight * 105 / paperHeight;
  previousSongDivWidth = appWidth * 12 / paperWidth;
  previousSongDivHeight = appHeight * 12 / paperHeight;

  back5DivX = appWidth * 22 / paperWidth;
  back5DivY = appHeight * 105 / paperHeight;
  back5DivWidth = appWidth * 12 / paperWidth;
  back5DivHeight = appHeight * 12 / paperHeight;

  nextSongDivX = appWidth * 81 / paperWidth;
  nextSongDivY = appHeight * 105 / paperHeight;
  nextSongDivWidth = appWidth * 12 / paperWidth;
  nextSongDivHeight = appHeight * 12 / paperHeight;

  pauseDivX = appWidth * 51 / paperWidth;
  pauseDivY = appHeight * 102 / paperHeight;
  pauseDivWidth = appWidth * 16 / paperWidth;
  pauseDivHeight = appHeight * 16 / paperHeight; //

  playDivX = appWidth * 35 / paperWidth;
  playDivY = appHeight * 102 / paperHeight;
  playDivWidth = appWidth * 16 / paperWidth;
  playDivHeight = appHeight * 16 / paperHeight;

  stopDivX = appWidth * 71 / paperWidth;
  stopDivY = appHeight * 128 / paperHeight;
  stopDivWidth = appWidth * 12 / paperWidth;
  stopDivHeight = appHeight * 12 / paperHeight; //

  skip5DivX = appWidth * 69 / paperWidth;
  skip5DivY = appHeight * 105 / paperHeight;
  skip5DivWidth = appWidth * 12 / paperWidth;
  skip5DivHeight = appHeight * 12 / paperHeight; //

  restartSongDivX = appWidth * 32 / paperWidth;
  restartSongDivY = appHeight * 128 / paperHeight;
  restartSongDivWidth = appWidth * 12 / paperWidth;
  restartSongDivHeight = appHeight * 12 / paperHeight; //

  loopDivX = appWidth * 13 / paperWidth;
  loopDivY = appHeight * 128 / paperHeight;
  loopDivWidth = appWidth * 12 / paperWidth;
  loopDivHeight = appHeight * 12 / paperHeight; //

  stopLoopDivX = appWidth * 52 / paperWidth;
  stopLoopDivY = appHeight * 128 / paperHeight;
  stopLoopDivWidth = appWidth * 12 / paperWidth;
  stopLoopDivHeight = appHeight * 12 / paperHeight; //

  LoopinfiniteDivX = appWidth * 32 / paperWidth;
  LoopinfiniteDivY = appHeight * 145 / paperHeight;
  LoopinfiniteDivWidth = appWidth * 32 / paperWidth;
  LoopinfiniteDivHeight = appHeight * 9 / paperHeight;

  float  favouritesDivX = appWidth * 10 / paperWidth;
  float  favouritesDivY = appHeight * 160 / paperHeight;
  float  favouritesDivWidth = appWidth * 25 / paperWidth;
  float  favouritesDivHeight = appHeight * 25 / paperHeight;

  float songsDivX = appWidth * 50 / paperWidth;
  float  songsDivY = appHeight * 160 / paperHeight;
  float  songsDivWidth = appWidth * 25 / paperWidth;
  float  songsDivHeight = appHeight * 25 / paperHeight;

  float playlistsDivX = appWidth * 90 / paperWidth;
  float playlistsDivY = appHeight * 160 / paperHeight;
  float playlistsDivWidth = appWidth * 25 / paperWidth;
  float playlistsDivHeight = appHeight * 25 / paperHeight;

  blackExitDivX = 0;
  blackExitDivY = 0;
  blackExitDivWidth = appWidth;
  blackExitDivHeight = appHeight;

  stroke(#000000);
  strokeWeight(3);
  fill(15, 15, 18);


  fill( #FFFCFC );
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  fill( #FFFCFC );
  rect(lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight);
  fill( #FFFCFC );
  rect(songCoverDivX, songCoverDivY, songCoverDivWidth, songCoverDivHeight);
  fill( #FFFCFC );
  rect(searchButtonDivX, searchButtonDivY, searchButtonDivWidth, searchButtonDivHeight);
  fill( #FFFCFC );
  rect(menuButtonDivX, menuButtonDivY, menuButtonDivWidth, menuButtonDivHeight);
  fill( #FFFCFC );
  rect(artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight);
  fill( #FFFCFC );
  rect(TrymeDivX, TrymeDivY, TrymeDivWidth, TrymeDivHeight);
  fill(15, 15, 18);
  fill( #FFFCFC );
  rect(aboutAuthorDivX, aboutAuthorDivY, aboutAuthorDivWidth, aboutAuthorDivHeight);
  fill( #FFFCFC );
  rect(controlsBoxDivX, controlsBoxDivY, controlsBoxDivWidth, controlsBoxDivHeight);
  fill( #FFFCFC );
  rect(restartSongDivX, restartSongDivY, restartSongDivWidth, restartSongDivHeight);
  fill( #FFFCFC );

  rect(previousSongDivX, previousSongDivY, previousSongDivWidth, previousSongDivHeight);
  fill( #FFFCFC );
  rect(back5DivX, back5DivY, back5DivWidth, back5DivHeight);
  fill( #FFFCFC );
  rect(pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight);
  fill( #FFFCFC );
  rect(skip5DivX, skip5DivY, skip5DivWidth, skip5DivHeight);
  fill( #FFFCFC );
  rect(nextSongDivX, nextSongDivY, nextSongDivWidth, nextSongDivHeight);
  fill( #FFFCFC );
  rect(LoopinfiniteDivX, LoopinfiniteDivY, LoopinfiniteDivWidth, LoopinfiniteDivHeight);
  fill( #FFFCFC );
  rect(ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight);
  fill( #FFFCFC );
  rect(favouritesDivX, favouritesDivY, favouritesDivWidth, favouritesDivHeight);
  fill( #FFFCFC );
  rect(songsDivX, songsDivY, songsDivWidth, songsDivHeight);
  fill( #FFFCFC );
  rect(playlistsDivX, playlistsDivY, playlistsDivWidth, playlistsDivHeight);
  fill( #FFFCFC );
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  fill( #FFFCFC );
  rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight);
  fill( #FFFCFC );
  rect(loopDivX, loopDivY, loopDivWidth, loopDivHeight);
  fill( #FFFCFC );
  rect(stopLoopDivX, stopLoopDivY, stopLoopDivWidth, stopLoopDivHeight);







  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependanciesFolder = "Dependecies";
  //
  songName[currentSong]= "Martin & Gina";
  currentSong++;
  songName[currentSong]= "Rapstar";
  currentSong=0;


  String songName1 = "Martin & Gina";
  String songname2 = "Rapstar";
  String soundEffect = "Click";
  String fileExtention = ".mp3";
  //
  String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open;
  String file;
  for (int i=0; i<numberOfSongs; i++) {
    //CAUTION remove Readme.txt
    file = musicDirectory + songName[i] + fileExtention;
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
  float Fontsize5 = fontsize*3;
  float Fontsize6 = fontsize*1;

  String Black_Italik = "SegoeUIBlack-Italic";
  PFont titleFont;
  titleFont = createFont(Black_Italik, fontsize);
  //
  resetink = #000000;
  yellowink = #FCE800;
  color redink = #C4312A;
  color blueink = #113DEA;
  fill(resetink);
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

  String Tryme = "TRY ME";
  textFont(titleFont, Fontsize5 );
  text( Tryme, TrymeDivX, TrymeDivY, TrymeDivWidth, TrymeDivHeight );

  String songTitle = "San Music Player ";
  textFont(titleFont, Fontsize6  ) ;
  //  text( songTitle, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );



  String Lyrics = "Lyrics" ;
  textFont(titleFont, Fontsize4);
  text( Lyrics, lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight );

  fill(resetink);

  //IMGAGE
  //name is somewhere else
  fill(resetink);
  textFont(titleFont, Fontsize3);
  text( Artistname, artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight );

  String AboutAthour = " Polo G is an American rapper and songwriter from Chicago Illinois. His real name is Taurus Bartlett, and he became famous for songs like Pop Out, Rapstar, and Martin & Gina." ;
  textFont(titleFont, Fontsize2);
  text( AboutAthour, aboutAuthorDivX, aboutAuthorDivY, aboutAuthorDivWidth, aboutAuthorDivHeight );

  String X ="X";
  textFont(titleFont, Fontsize1);
  text( X, ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight);
  fill(resetink);

  String upArow = "..";
  String dependeciesFolder = "Dependecies";
  String imagesFolder = "Images";
  String imageName1 = "album cover Polo g";
  String fileExension = ".jpg";
  open = "/";

  //
  //Concatenation
  String imageDirectory = upArow + open + upArow + open + dependeciesFolder + open + imagesFolder + open;
  String pathway = imageDirectory + imageName1 + fileExension;

  //
  PImage image1 = loadImage( pathway );
  int imageWidth = 587;
  int imageHeight = 360;

  //
  songCoverDivX = appWidth * 60 / paperWidth;
  songCoverDivY = appHeight * 25 / paperHeight;
  songCoverDivWidth = appWidth * 66 / paperWidth;
  songCoverDivHeight = appHeight * 60 / paperHeight;


  rect(songCoverDivX, songCoverDivY, songCoverDivWidth, songCoverDivHeight);

  //
  //Image Aspect Ratio Algorithm

  //Ternary Operator
  float imageAspectRatio_GreaterOne = ( imageWidth > imageHeight )
    ? float(imageWidth) / float(imageHeight)
    : float(imageHeight) / float(imageWidth);


  float imageWidthAdjusted = songCoverDivWidth;


  float imageHeightAdjusted = ( imageWidth >= songCoverDivWidth )
    ? imageWidthAdjusted / imageAspectRatio_GreaterOne
    : imageWidthAdjusted * imageAspectRatio_GreaterOne;

  while ( imageHeightAdjusted > songCoverDivHeight ) {
    imageWidthAdjusted *= 0.99;
    imageHeightAdjusted = imageWidthAdjusted / imageAspectRatio_GreaterOne;
  }


  image(image1, songCoverDivX, songCoverDivY, imageWidthAdjusted, imageHeightAdjusted);


  // LEFT BAR
  float restartBarX = restartSongDivX + restartSongDivWidth * 1/4;
  float restartBarY = restartSongDivY + restartSongDivHeight * 1/4;
  float restartBarWidth = restartSongDivWidth * 1/12;
  float restartBarHeight = restartSongDivHeight * 1/2;

  rect(
    restartBarX,
    restartBarY,
    restartBarWidth,
    restartBarHeight
    );



  float restartTriX1 = restartSongDivX + restartSongDivWidth * 3/4;
  float restartTriY1 = restartSongDivY + restartSongDivHeight * 1/4;

  float restartTriX2 = restartSongDivX + restartSongDivWidth * 1/3;
  float restartTriY2 = restartSongDivY + restartSongDivHeight * 1/2;

  float restartTriX3 = restartSongDivX + restartSongDivWidth * 3/4;
  float restartTriY3 = restartSongDivY + restartSongDivHeight * 3/4;

  triangle(
    restartTriX1, restartTriY1,
    restartTriX2, restartTriY2,
    restartTriX3, restartTriY3
    );


  // RESTART ARROW CURVE
  float restartArrowX1 = restartSongDivX + restartSongDivWidth * 5/8;
  float restartArrowY1 = restartSongDivY + restartSongDivHeight * 1/5;

  float restartArrowX2 = restartSongDivX + restartSongDivWidth * 1/2;
  float restartArrowY2 = restartSongDivY + restartSongDivHeight * 1/8;

  float restartArrowX3 = restartSongDivX + restartSongDivWidth * 3/8;
  float restartArrowY3 = restartSongDivY + restartSongDivHeight * 1/4;

  line(restartArrowX1, restartArrowY1, restartArrowX2, restartArrowY2);
  line(restartArrowX2, restartArrowY2, restartArrowX3, restartArrowY3);

  float newPlayTriX1 = playDivX + playDivWidth * 1/4;
  float newPlayTriY1 = playDivY + playDivHeight * 1/4;

  float newPlayTriX2 = playDivX + playDivWidth * 3/4;
  float newPlayTriY2 = playDivY + playDivHeight * 1/2;

  float newPlayTriX3 = playDivX + playDivWidth * 1/4;
  float newPlayTriY3 = playDivY + playDivHeight * 3/4;


  triangle(newPlayTriX1, newPlayTriY1, newPlayTriX2, newPlayTriY2, newPlayTriX3, newPlayTriY3);



  float PauseLeftX = pauseDivX + pauseDivWidth * 1/4;
  float PauseLeftY = pauseDivY + pauseDivHeight * 1/4;
  float PauseLeftWidth = pauseDivWidth * 1/8;
  float PauseLeftHeight = pauseDivHeight * 1/2;


  float PauseRightX = pauseDivX + pauseDivWidth * 4/8;
  float PauseRightY = pauseDivY + pauseDivHeight * 1/4;
  float PauseRightWidth = pauseDivWidth * 1/8;
  float PauseRightHeight = pauseDivHeight * 1/2;






  rect(PauseLeftX, PauseLeftY, PauseLeftWidth, PauseLeftHeight);
  rect(PauseRightX, PauseRightY, PauseRightWidth, PauseRightHeight);


  float StopX = stopDivX + stopDivWidth * 1/7;
  float StopY = stopDivY + stopDivHeight * 1/2;
  float StopWidth = stopDivWidth * 1/2;
  float StopHeight = stopDivHeight * 1/2;

  rect(stopDivX, stopDivY, stopDivWidth, stopDivHeight);
  rect(StopX, StopY, StopWidth, StopHeight);


  float NextTriX1 = nextSongDivX + nextSongDivWidth * 1/4;
  float NextTriY1 = nextSongDivY + nextSongDivHeight * 1/4;

  float NextTriX2 = nextSongDivX + nextSongDivWidth * 3/4;
  float NextTriY2 = nextSongDivY + nextSongDivHeight * 1/2;

  float NextTriX3 = nextSongDivX + nextSongDivWidth * 1/4;
  float NextTriY3 = nextSongDivY + nextSongDivHeight * 3/4;

  float NextBarX = nextSongDivX + nextSongDivWidth * 3/4;
  float NextBarY = nextSongDivY + nextSongDivHeight * 1/4;
  float NextBarWidth = nextSongDivWidth * 1/10;
  float NextBarHeight = nextSongDivHeight * 1/2;

  triangle(NextTriX1, NextTriY1, NextTriX2, NextTriY2, NextTriX3, NextTriY3);
  rect(NextBarX, NextBarY, NextBarWidth, NextBarHeight);


  float PrevTriX1 = previousSongDivX + previousSongDivWidth * 3/4;
  float PrevTriY1 = previousSongDivY + previousSongDivHeight * 1/4;

  float PrevTriX2 = previousSongDivX + previousSongDivWidth * 1/4;
  float PrevTriY2 = previousSongDivY + previousSongDivHeight * 1/2;

  float PrevTriX3 = previousSongDivX + previousSongDivWidth * 3/4;
  float PrevTriY3 = previousSongDivY + previousSongDivHeight * 3/4;

  float PrevBarX = previousSongDivX + previousSongDivWidth * 1/4;
  float PrevBarY = previousSongDivY + previousSongDivHeight * 1/4;
  float PrevBarWidth = previousSongDivWidth * 1/10;
  float PrevBarHeight = previousSongDivHeight * 1/2;

  triangle(PrevTriX1, PrevTriY1, PrevTriX2, PrevTriY2, PrevTriX3, PrevTriY3);
  rect(PrevBarX, PrevBarY, PrevBarWidth, PrevBarHeight);



  float menuLine1X1 = menuButtonDivX + menuButtonDivWidth * 1/4;
  float menuLine1Y1 = menuButtonDivY + menuButtonDivHeight * 1/4;

  float menuLine1X2 = menuButtonDivX + menuButtonDivWidth * 3/4;
  float menuLine1Y2 = menuButtonDivY + menuButtonDivHeight * 1/4;



  float menuLine2X1 = menuButtonDivX + menuButtonDivWidth * 1/4;
  float menuLine2Y1 = menuButtonDivY + menuButtonDivHeight * 1/2;

  float menuLine2X2 = menuButtonDivX + menuButtonDivWidth * 3/4;
  float menuLine2Y2 = menuButtonDivY + menuButtonDivHeight * 1/2;



  float menuLine3X1 = menuButtonDivX + menuButtonDivWidth * 1/4;
  float menuLine3Y1 = menuButtonDivY + menuButtonDivHeight * 3/4;

  float menuLine3X2 = menuButtonDivX + menuButtonDivWidth * 3/4;
  float menuLine3Y2 = menuButtonDivY + menuButtonDivHeight * 3/4;



  line(menuLine1X1, menuLine1Y1, menuLine1X2, menuLine1Y2);
  line(menuLine2X1, menuLine2Y1, menuLine2X2, menuLine2Y2);
  line(menuLine3X1, menuLine3Y1, menuLine3X2, menuLine3Y2);





  float searchCircleX = searchButtonDivX + searchButtonDivWidth * 2/5;
  float searchCircleY = searchButtonDivY + searchButtonDivHeight * 2/5;

  float searchCircleSize =
    (searchButtonDivWidth + searchButtonDivHeight) / 5;



  float searchHandleX1 = searchButtonDivX + searchButtonDivWidth * 4/8;
  float searchHandleY1 = searchButtonDivY + searchButtonDivHeight * 4/8;

  float searchHandleX2 = searchButtonDivX + searchButtonDivWidth * 3/4;
  float searchHandleY2 = searchButtonDivY + searchButtonDivHeight * 3/4;



  ellipse(
    searchCircleX,
    searchCircleY,
    searchCircleSize,
    searchCircleSize
    );

  line(
    searchHandleX1,
    searchHandleY1,
    searchHandleX2,
    searchHandleY2
    );






  float LoopX1 = loopDivX + loopDivWidth * 1/4;
  float LoopY1 = loopDivY + loopDivHeight * 1/4;

  float LoopX2 = loopDivX + loopDivWidth * 3/4;
  float LoopY2 = loopDivY + loopDivHeight * 1/4;


  float LoopX3 = loopDivX + loopDivWidth * 3/4;
  float LoopY3 = loopDivY + loopDivHeight * 3/4;

  float LoopX4 = loopDivX + loopDivWidth * 1/4;
  float LoopY4 = loopDivY + loopDivHeight * 3/4;

  line(LoopX1, LoopY1, LoopX2, LoopY2);
  line(LoopX2, LoopY2, LoopX3, LoopY3);
  line(LoopX3, LoopY3, LoopX4, LoopY4);
  line(LoopX4, LoopY4, LoopX1, LoopY1);


  float LoopInfiniteX1 = LoopinfiniteDivX + LoopinfiniteDivWidth * 1/4;
  float LoopInfiniteY1 = LoopinfiniteDivY + LoopinfiniteDivHeight * 1/4;

  float LoopInfiniteX2 = LoopinfiniteDivX + LoopinfiniteDivWidth * 3/4;
  float LoopInfiniteY2 = LoopinfiniteDivY + LoopinfiniteDivHeight * 1/4;

  float LoopInfiniteX3 = LoopinfiniteDivX + LoopinfiniteDivWidth * 3/4;
  float LoopInfiniteY3 = LoopinfiniteDivY + LoopinfiniteDivHeight * 3/4;

  float LoopInfiniteX4 = LoopinfiniteDivX + LoopinfiniteDivWidth * 1/4;
  float LoopInfiniteY4 = LoopinfiniteDivY + LoopinfiniteDivHeight * 3/4;



  line(LoopInfiniteX1, LoopInfiniteY1, LoopInfiniteX2, LoopInfiniteY2);
  line(LoopInfiniteX2, LoopInfiniteY2, LoopInfiniteX3, LoopInfiniteY3);
  line(LoopInfiniteX3, LoopInfiniteY3, LoopInfiniteX4, LoopInfiniteY4);
  line(LoopInfiniteX4, LoopInfiniteY4, LoopInfiniteX1, LoopInfiniteY1);


  float OneX1 = LoopinfiniteDivX + LoopinfiniteDivWidth * 1/2;
  float OneY1 = LoopinfiniteDivY + LoopinfiniteDivHeight * 1/3;

  // BOTTOM OF 1
  float OneX2 = LoopinfiniteDivX + LoopinfiniteDivWidth * 1/2;
  float OneY2 = LoopinfiniteDivY + LoopinfiniteDivHeight * 2/3;


  float OneTopX = LoopinfiniteDivX + LoopinfiniteDivWidth * 7/16;
  float OneTopY = LoopinfiniteDivY + LoopinfiniteDivHeight * 7/16;



  line(OneTopX, OneTopY, OneX1, OneY1);
  line(OneX1, OneY1, OneX2, OneY2);




  float stopLoopX1 = stopLoopDivX + stopLoopDivWidth * 1/4;
  float stopLoopY1 = stopLoopDivY + stopLoopDivHeight * 1/4;

  float stopLoopX2 = stopLoopDivX + stopLoopDivWidth * 3/4;
  float stopLoopY2 = stopLoopDivY + stopLoopDivHeight * 1/4;


  float stopLoopX3 = stopLoopDivX + stopLoopDivWidth * 3/4;
  float stopLoopY3 = stopLoopDivY + stopLoopDivHeight * 3/4;

  float stopLoopX4 = stopLoopDivX + stopLoopDivWidth * 1/4;
  float stopLoopY4 = stopLoopDivY + stopLoopDivHeight * 3/4;

  line(LoopX1, LoopY1, LoopX2, LoopY2);
  line(LoopX2, LoopY2, LoopX3, LoopY3);
  line(LoopX3, LoopY3, LoopX4, LoopY4);
  line(LoopX4, LoopY4, LoopX1, LoopY1);

  float StopLoopX1 = stopLoopDivX + stopLoopDivWidth * 1/4;
  float StopLoopY1 = stopLoopDivY + stopLoopDivHeight * 1/4;

  float StopLoopX2 = stopLoopDivX + stopLoopDivWidth * 3/4;
  float StopLoopY2 = stopLoopDivY + stopLoopDivHeight * 3/4;

  line(StopLoopX1, StopLoopY1, StopLoopX2, StopLoopY2);



  float Skip5TriX1 = skip5DivX + skip5DivWidth * 1/4;
  float Skip5TriY1 = skip5DivY + skip5DivHeight * 1/4;

  float Skip5TriX2 = skip5DivX + skip5DivWidth * 3/4;
  float Skip5TriY2 = skip5DivY + skip5DivHeight * 1/2;

  float Skip5TriX3 = skip5DivX + skip5DivWidth * 1/4;
  float Skip5TriY3 = skip5DivY + skip5DivHeight * 3/4;


  float FiveX1 = skip5DivX + skip5DivWidth * 3/4;
  float FiveY1 = skip5DivY + skip5DivHeight * 1/4;

  float FiveX2 = skip5DivX + skip5DivWidth * 7/8;
  float FiveY2 = skip5DivY + skip5DivHeight * 1/4;

  float FiveX3 = skip5DivX + skip5DivWidth * 3/4;
  float FiveY3 = skip5DivY + skip5DivHeight * 1/2;

  float FiveX4 = skip5DivX + skip5DivWidth * 7/8;
  float FiveY4 = skip5DivY + skip5DivHeight * 1/2;

  float FiveX5 = skip5DivX + skip5DivWidth * 3/4;
  float FiveY5 = skip5DivY + skip5DivHeight * 3/4;

  float FiveX6 = skip5DivX + skip5DivWidth * 7/8;
  float FiveY6 = skip5DivY + skip5DivHeight * 3/4;


  triangle(Skip5TriX1, Skip5TriY1, Skip5TriX2, Skip5TriY2, Skip5TriX3, Skip5TriY3);


  line(FiveX1, FiveY1, FiveX2, FiveY2); //top
  line(FiveX1, FiveY1, FiveX3, FiveY3); //down left
  line(FiveX3, FiveY3, FiveX4, FiveY4); //middle
  line(FiveX4, FiveY4, FiveX6, FiveY6); //down right
  line(FiveX5, FiveY5, FiveX6, FiveY6); //bottom


  float Prev5TriX1 = back5DivX + back5DivWidth * 3/4;
  float Prev5TriY1 = back5DivY + back5DivHeight * 1/4;

  float Prev5TriX2 = back5DivX + back5DivWidth * 1/4;
  float Prev5TriY2 = back5DivY + back5DivHeight * 1/2;

  float Prev5TriX3 = back5DivX + back5DivWidth * 3/4;
  float Prev5TriY3 = back5DivY + back5DivHeight * 3/4;



  float P5X1 = back5DivX + back5DivWidth * 1/8;
  float P5Y1 = back5DivY + back5DivHeight * 1/4;

  float P5X2 = back5DivX + back5DivWidth * 1/4;
  float P5Y2 = back5DivY + back5DivHeight * 1/4;

  float P5X3 = back5DivX + back5DivWidth * 1/8;
  float P5Y3 = back5DivY + back5DivHeight * 1/2;

  float P5X4 = back5DivX + back5DivWidth * 1/4;
  float P5Y4 = back5DivY + back5DivHeight * 1/2;

  float P5X5 = back5DivX + back5DivWidth * 1/8;
  float P5Y5 = back5DivY + back5DivHeight * 3/4;

  float P5X6 = back5DivX + back5DivWidth * 1/4;
  float P5Y6 = back5DivY + back5DivHeight * 3/4;


  triangle(Prev5TriX1, Prev5TriY1, Prev5TriX2, Prev5TriY2, Prev5TriX3, Prev5TriY3);

  line(P5X1, P5Y1, P5X2, P5Y2);
  line(P5X1, P5Y1, P5X3, P5Y3);
  line(P5X3, P5Y3, P5X4, P5Y4);
  line(P5X4, P5Y4, P5X6, P5Y6);
  line(P5X5, P5Y5, P5X6, P5Y6);


  float favTopX = favouritesDivX + favouritesDivWidth * 1/2;
  float favTopY = favouritesDivY + favouritesDivHeight * 1/6;

  float favRightTopX = favouritesDivX + favouritesDivWidth * 13/16;
  float favRightTopY = favouritesDivY + favouritesDivHeight * 3/8;

  float favRightBottomX = favouritesDivX + favouritesDivWidth * 13/16;
  float favRightBottomY = favouritesDivY + favouritesDivHeight * 11/16;

  float favBottomX = favouritesDivX + favouritesDivWidth * 1/2;
  float favBottomY = favouritesDivY + favouritesDivHeight * 13/16;

  float favLeftBottomX = favouritesDivX + favouritesDivWidth * 3/16;
  float favLeftBottomY = favouritesDivY + favouritesDivHeight * 11/16;

  float favLeftTopX = favouritesDivX + favouritesDivWidth * 3/16;
  float favLeftTopY = favouritesDivY + favouritesDivHeight * 3/8;


  line(favTopX, favTopY, favRightBottomX, favRightBottomY);
  line(favRightBottomX, favRightBottomY, favLeftTopX, favLeftTopY);
  line(favLeftTopX, favLeftTopY, favRightTopX, favRightTopY);
  line(favRightTopX, favRightTopY, favLeftBottomX, favLeftBottomY);
  line(favLeftBottomX, favLeftBottomY, favTopX, favTopY);




  float noteStemTopX = songsDivX + songsDivWidth * 5/8;
  float noteStemTopY = songsDivY + songsDivHeight * 1/4;

  float noteStemBottomX = songsDivX + songsDivWidth * 5/8;
  float noteStemBottomY = songsDivY + songsDivHeight * 11/16;

  line(
    noteStemTopX, noteStemTopY,
    noteStemBottomX, noteStemBottomY
    );



  float noteFlagX1 = songsDivX + songsDivWidth * 5/8;
  float noteFlagY1 = songsDivY + songsDivHeight * 1/4;

  float noteFlagX2 = songsDivX + songsDivWidth * 13/16;
  float noteFlagY2 = songsDivY + songsDivHeight * 3/8;

  line(
    noteFlagX1, noteFlagY1,
    noteFlagX2, noteFlagY2
    );



  float noteCircleX = songsDivX + songsDivWidth * 1/2;
  float noteCircleY = songsDivY + songsDivHeight * 3/4;

  ellipse(
    noteCircleX,
    noteCircleY,
    songsDivWidth * 1/5,
    songsDivHeight * 1/5
    );




  line(
    playlistsDivX + playlistsDivWidth * 1/4,
    playlistsDivY + playlistsDivHeight * 1/4,

    playlistsDivX + playlistsDivWidth * 3/4,
    playlistsDivY + playlistsDivHeight * 1/4
    );



  line(
    playlistsDivX + playlistsDivWidth * 1/4,
    playlistsDivY + playlistsDivHeight * 1/2,

    playlistsDivX + playlistsDivWidth * 5/8,
    playlistsDivY + playlistsDivHeight * 1/2
    );



  line(
    playlistsDivX + playlistsDivWidth * 1/4,
    playlistsDivY + playlistsDivHeight * 3/4,

    playlistsDivX + playlistsDivWidth * 3/4,
    playlistsDivY + playlistsDivHeight * 3/4
    );


  // PLAY TRIANGLE
  float playListTriX1 = playlistsDivX + playlistsDivWidth * 11/16;
  float playListTriY1 = playlistsDivY + playlistsDivHeight * 3/8;

  float playListTriX2 = playlistsDivX + playlistsDivWidth * 11/16;
  float playListTriY2 = playlistsDivY + playlistsDivHeight * 5/8;

  float playListTriX3 = playlistsDivX + playlistsDivWidth * 7/8;
  float playListTriY3 = playlistsDivY + playlistsDivHeight * 1/2;

  triangle(
    playListTriX1, playListTriY1,
    playListTriX2, playListTriY2,
    playListTriX3, playListTriY3
    );

  //
}


//End Setup
//
void draw() {
  fill(#FFFFFF);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  PFont titleFont;
  String Black_Italik = "SegoeUIBlack-Italic";
  float fontsize = 40;
  titleFont = createFont(Black_Italik, fontsize);

  fill(#000000);
  if (playListMetaData[currentSong].title() == "") {
    textFont(titleFont, 30  ) ;
    text( songName[currentSong], songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
    fill( resetink);
  } else {

    textFont(titleFont, 30  ) ;
    text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
    fill( resetink);
  }



  fill(yellowink);


  // Only play if it's NOT paused AND the song isn't already running
  if (isPaused == false) {
    if (playList[currentSong].isPlaying() == false) {
      playList[currentSong].play();
      isPaused=true;
    }
  }


  if ( mouseX > TrymeDivX && mouseX < TrymeDivX + TrymeDivWidth && mouseY > TrymeDivY && mouseY < TrymeDivY + TrymeDivHeight ) {

    rect(TrymeDivX, TrymeDivY, TrymeDivWidth, TrymeDivHeight);
    fill(#000000 );
  } else {

    fill(#FFFFFF);
    rect(TrymeDivX, TrymeDivY, TrymeDivWidth, TrymeDivHeight);
    float Fontsize5 = fontsize*3;
    String Tryme = "TRY ME";
    textFont(titleFont, Fontsize5 );
    fill(#000000);
    text( Tryme, TrymeDivX, TrymeDivY, TrymeDivWidth, TrymeDivHeight );
  }
}







void mousePressed () {

  soundEffects[0].rewind();
  soundEffects[0].play();








  if ( mouseX > playDivX && mouseX <  playDivX +  playDivWidth && mouseY >  playDivY && mouseY <  playDivY +  playDivHeight ) {
    playList[currentSong].loop(0);

    isPaused = false;
  }
  if ( mouseX > pauseDivX && mouseX <  pauseDivX +  pauseDivWidth && mouseY >  pauseDivY && mouseY <  pauseDivY +  pauseDivHeight ) {
    playList[currentSong].pause();
    isPaused = true;
  }
  if ( mouseX > previousSongDivX && mouseX <  previousSongDivX +  previousSongDivWidth && mouseY >  previousSongDivY && mouseY <  previousSongDivY +  previousSongDivHeight ) {
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
  if ( mouseX > back5DivX && mouseX <  back5DivX +  back5DivWidth && mouseY >  back5DivY && mouseY <  back5DivY +  back5DivHeight ) {
    playList[currentSong].skip( -5000 );
  }
  if ( mouseX > nextSongDivX && mouseX <  nextSongDivX +  nextSongDivWidth && mouseY >  nextSongDivY && mouseY <  nextSongDivY +  nextSongDivHeight ) {
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
  if ( mouseX > stopDivX && mouseX <  stopDivX +  stopDivWidth && mouseY >  stopDivY && mouseY <  stopDivY +  stopDivHeight ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
      playList[currentSong].rewind();
      isPaused = true;
    } else {
      isPaused = false;
      playList[currentSong].play();//double tap
    }
  }
  if ( mouseX > skip5DivX && mouseX <  skip5DivX +  skip5DivWidth && mouseY >  skip5DivY && mouseY <  skip5DivY +  skip5DivHeight ) {
    playList[currentSong].skip( 5000 );
  }
  if ( mouseX > restartSongDivX && mouseX <  restartSongDivX +  restartSongDivWidth && mouseY >  restartSongDivY && mouseY <  restartSongDivY +  restartSongDivHeight ) {
    playList[currentSong].rewind();
  }

  if ( mouseX > loopDivX && mouseX < loopDivX + loopDivWidth && mouseY > loopDivY && mouseY < loopDivY + loopDivHeight ) {
    playList[currentSong].loop(1);
  }
  if ( mouseX > LoopinfiniteDivX && mouseX < LoopinfiniteDivX + LoopinfiniteDivWidth && mouseY > LoopinfiniteDivY && mouseY < LoopinfiniteDivY + LoopinfiniteDivHeight ) {
    playList[currentSong].loop();
  }


  if ( mouseX > stopLoopDivX && mouseX <  stopLoopDivX +  stopLoopDivWidth && mouseY >  stopLoopDivY && mouseY <  stopLoopDivY +  stopLoopDivHeight ) {
    playList[currentSong].pause();
    playList[currentSong].isPlaying();
  }
  if ( mouseX > ExitButtonDivX && mouseX < ExitButtonDivX + ExitButtonDivWidth && mouseY > ExitButtonDivY && mouseY < ExitButtonDivY + ExitButtonDivHeight ) {



    exit();
  }
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
  if ( key=='P' || key=='p' ) {//Simple Play, double tap possible
    playList[currentSong].loop(0);
    isPaused = false;
  }
  if ( key=='O' || key=='o' ) { // Pause
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      isPaused = true;
    } else {
      playList[currentSong].play();
      isPaused = false;
    }
  }
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) {
    playList[currentSong].loop(1);
  }
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

//Music Buttons

//Picture
