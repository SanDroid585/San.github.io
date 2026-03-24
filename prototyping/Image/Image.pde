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
String imageDirectory = upArow + open + upArow + open + dependeciesFolder + open + imagesFolder + open;
String pathway = imageDirectory + imageName1 + fileExension;

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
