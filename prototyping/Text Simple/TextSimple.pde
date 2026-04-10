/* Text, Simple ... Hardcoded
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
//
//
float songCoverDivX = appWidth * 60 / paperWidth;
float songCoverDivY = appHeight * 25 / paperHeight;
float songCoverDivWidth = appWidth * 66 / paperWidth;
float songCoverDivHeight = appHeight * 60 / paperHeight;

float songTitleDivX = appWidth * 25 / paperWidth;
float songTitleDivY = appHeight * 5 / paperHeight;
float songTitleDivWidth = appWidth * 80 / paperWidth;
float songTitleDivHeight = appHeight * 12 / paperHeight;

float lyricsDivX = appWidth * 5 / paperWidth;
float lyricsDivY = appHeight * 25 / paperHeight;
float lyricsDivWidth = appWidth * 50 / paperWidth;
float lyricsDivHeight = appHeight * 60 / paperHeight;

float artistNameDivX = appWidth * 95 / paperWidth;
float artistNameDivY = appHeight * 95 / paperHeight;
float artistNameDivWidth = appWidth * 31 / paperWidth;
float artistNameDivHeight = appHeight * 10 / paperHeight;

float aboutAuthorDivX = appWidth * 95 / paperWidth;
float aboutAuthorDivY = appHeight * 137 / paperHeight;
float aboutAuthorDivWidth = appWidth * 31 / paperWidth;
float aboutAuthorDivHeight = appHeight * 18 / paperHeight;

rect(songCoverDivX, songCoverDivY, songCoverDivWidth, songCoverDivHeight);

rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight);
rect(artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight);
rect(artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight);

rect(aboutAuthorDivX, aboutAuthorDivY, aboutAuthorDivWidth, aboutAuthorDivHeight);


//String, Text, Literal

//Fonts from OS

//Aspect Ratio for Text

//Drawing Text
