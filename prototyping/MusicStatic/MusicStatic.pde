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
int numberOfSongs = 1;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;
//
//Display 
fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Music Loading - STRUCTURED Review
minim = new Minim(this);
String upArrow = "..";
String open = "/";
String musicFolder = "Music";
String soundEffectsFolder = "Sound Effects";
String dependanciesFolder = "Dependecies";
String songName = "Martin & Gina";
String soundEffect = "Click";
String fileExtention = ".mp3";
String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open;
String file = musicDirectory + songName + fileExtention;
playList [ currentSong ] = minim.loadFile( file );
file = soundEffectsDirectory + soundEffect + fileExtention;
soundEffects[currentSong] = minim.loadFile(file);
//
if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, play list is NULL
  //See FILE or minim.loadFile
  println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundEffects);
  /*
  println("Music Pathway", musicDirectory);
  println("Full Music File Pathway", file);
  */
} else {
  playList[currentSong].play();
  printArray(playList);
}
playList[currentSong].play();
