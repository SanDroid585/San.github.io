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

float ExitButtonDivX = appWidth * 123 / paperWidth;
float ExitButtonDivY = appHeight * 5 / paperHeight;
float ExitButtonDivWidth = appWidth * 12 / paperWidth;
float ExitButtonDivHeight = appHeight * 12 / paperHeight;


rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight);
rect(artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight);
rect(ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight);


rect(aboutAuthorDivX, aboutAuthorDivY, aboutAuthorDivWidth, aboutAuthorDivHeight);


//String, Text, Literal
String title = "Martin & Gina" ;
String X = "X" ;
String Lyrics = "Lyrics" ;
String Artistname = "Polo G" ;
String AboutAthour = "About author" ;

//fonts from OSv
println ("start of console");
String[] fontList = PFont.list();
printArray(fontList);

//Fonts from OS
float fontsize = 4;
println ( fontsize );
PFont titleFont;
String Black_Italik = "SegoeUIBlack-Italic";
titleFont = createFont(Black_Italik, fontsize);
float Fontsize1 = appHeight;
float Fontsize2 = appHeight;
float Fontsize3 = appHeight;
float Fontsize4 = appHeight;
//
//Aspect Ratio for Title
float textAdjustment = 0.9;
float fontsizeBlack_Italik= 83;
float Black_ItalikdivHeight = songTitleDivWidth;
float Black_ItalikAspectRatio = fontsize / songTitleDivHeight;
fontsize = songTitleDivWidth*Black_ItalikAspectRatio * textAdjustment;
//Aspect Ratio for Lyrics
//Aspect Ratio for artist name

//Aspect Ratio for about author
//Fontsize

println(fontsize);
  //
  ;//Drawing Text
color resetink = #FFFFFF;
color blackink = #080707;
color redink = #C4312A;
color blueink = #113DEA;
fill(blackink);
textAlign (CENTER, CENTER);
textFont(titleFont, fontsize);

float constantDecrease = 0.99;
int iWhile = 0;

text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
text( Lyrics, lyricsDivX, lyricsDivY, lyricsDivWidth, lyricsDivHeight );
while ( textWidth(Artistname) > artistNameDivWidth) {
  iWhile++;
  if (iWhile>100) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontsize *= constantDecrease;
  textFont(titleFont, fontsize);
}
text( Artistname, artistNameDivX, artistNameDivY, artistNameDivWidth, artistNameDivHeight );
text( AboutAthour, aboutAuthorDivX, aboutAuthorDivY, aboutAuthorDivWidth, aboutAuthorDivHeight );
text( X, ExitButtonDivX, ExitButtonDivY, ExitButtonDivWidth, ExitButtonDivHeight);
fill(resetink);
//
