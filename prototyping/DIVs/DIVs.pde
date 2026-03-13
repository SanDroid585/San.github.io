println(displayWidth, displayHeight);
fullScreen();

int appWidth = displayWidth;
int appHeight = displayHeight;


int paperWidth = 131;
int paperHeight = 197;



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
float controlsBoxDivWidth = appWidth * 85 / paperWidth;
float controlsBoxDivHeight = appHeight * 40 / paperHeight;


float previousSongDivX = appWidth * 8 / paperWidth;
float previousSongDivY = appHeight * 105 / paperHeight;
float previousSongDivWidth = appWidth * 12 / paperWidth;
float previousSongDivHeight = appHeight * 12 / paperHeight;


float back5DivX = appWidth * 24/ paperWidth;
float back5DivY = appHeight * 105 / paperHeight;
float back5DivWidth = appWidth * 12 / paperWidth;
float back5DivHeight = appHeight * 12 / paperHeight;


float pauseDivX = appWidth * 40 / paperWidth;
float pauseDivY = appHeight * 102 / paperHeight;
float pauseDivWidth = appWidth * 16 / paperWidth;
float pauseDivHeight = appHeight * 16 / paperHeight;


float skip5DivX = appWidth * 60 / paperWidth;
float skip5DivY = appHeight * 105 / paperHeight;
float skip5DivWidth = appWidth * 12 / paperWidth;
float skip5DivHeight = appHeight * 12 / paperHeight;


float nextSongDivX = appWidth * 75 / paperWidth;
float nextSongDivY = appHeight * 105 / paperHeight;
float nextSongDivWidth = appWidth * 12 / paperWidth;
float nextSongDivHeight = appHeight * 12 / paperHeight;


float volumeDivX = appWidth * 13 / paperWidth;
float volumeDivY = appHeight * 126 / paperHeight;
float volumeDivWidth = appWidth * 70 / paperWidth;
float volumeDivHeight = appHeight * 8 / paperHeight;


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



background(190,60,70);     // red background
stroke(120,200,255);      // blue border
strokeWeight(3);
fill(15,15,18);           // dark boxes




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
