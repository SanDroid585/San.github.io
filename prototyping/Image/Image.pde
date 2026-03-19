/* Adpect Ratio
 */
 //
//Display
fullScreen();
//
println(displayWidth, displayHeight);
int appWidth = displayWidth; 
int appHeight = displayHeight;
int paperWidth = 131;
int paperHeight = 197;
String upArow = "..";
String dependeciesFolder = "Dependecies";
String imagesFolder = "Images";
String imageName1 = "album cover Polo g";
String fileExension = ".jpg";
String open = "/";
//
//Concatenation
//Note, Cut Out, See Absolute Pathway: 
//See Relative Pathway: Dependencies/Images
String imageDirectory = upArow + open + upArow + open + dependeciesFolder + open + imagesFolder + open;
String pathway = imageDirectory + imageName1 + fileExension;
//println(pathway);
//
PImage image1 = loadImage( pathway ); 
int imageWidth = 587;
int imageHeight = 360;
//
float songCoverDivX = appWidth * 60 / paperWidth;
float songCoverDivY = appHeight * 25 / paperHeight;
float songCoverDivWidth = appWidth * 66 / paperWidth;
float songCoverDivHeight = appHeight * 60 / paperHeight;

rect(songCoverDivX, songCoverDivY, songCoverDivWidth, songCoverDivHeight);

image(image1, songCoverDivX, songCoverDivY, songCoverDivWidth, songCoverDivHeight);
//
//Population: Divs
//Image; Aspect Ratio Algorithm
( float (songCoverDivWidth) / float (songCoverDivHeight) );
//Ternary Operator
float imageAspectRatio_GreaterOne = ( imageWidth > imageHeight ) ? float (imageWidth) / float (imageHeight) : float (imageHeight) / float (imageWidth);
