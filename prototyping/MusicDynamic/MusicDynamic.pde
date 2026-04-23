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
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;
//
void setup() {

  //Display
  fullScreen(); //displayWidth //displayHeight
  int appWidth = displayWidth;
  int appHeight = displayHeight;
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
    file = soundEffectsDirectory + soundEffect + fileExtention;
    playList [ currentSong ] = minim.loadFile( file );
  }

  file = musicDirectory + songName + fileExtention;
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
}

//}//End Setup
//
void draw() {
  playList[currentSong].play();
}
//
void mousePressed () {
}
//
void keyPressed () {
}
//
