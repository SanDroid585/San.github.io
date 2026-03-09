/* DIVs 20 Rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight =  displayHeight;
//
int paperWidth = 131;
int paperHeight = 197;
float MenuButtonDivX = appWidth * 0.9 / paperWidth;
float MenuButtonDivY = appHeight * 0 / paperHeight;
float MenuButtonDivWidth = appWidth  * 10.8 / paperWidth;
float MenuButtonDivHeight = appHeight * 10.8 / paperHeight;

float SongTitleDivX = appWidth * 31 / paperWidth;
float SongTitleDivY = appHeight * 10 / paperHeight;
float SongTitleDivWidth = appWidth * 58 / paperWidth;
float SongTitleDivHeight = appHeight * 10.8 / paperHeight;

float LyricsDivX = appWidth * 3 / paperWidth;
float LyricsDivY = appHeight * 29 / paperHeight;
float LyricsDivWidth = appWidth * 40 / paperWidth;
float LyricsDivHeight = appHeight * 50.4 / paperHeight;

float SongCoverDivX = appWidth * 38 / paperWidth;
float SongCoverDivY = appHeight * 48 / paperHeight;
float SongCoverDivWidth = appWidth * 60.4 / paperWidth;
float SongCoverDivHeight = appHeight * 45 / paperHeight;

float SearchButtonDivX = appWidth * 0.2 / paperWidth;
float SearchButtonDivY = appHeight * 108 / paperHeight;
float SearchButtonDivWidth = appWidth * 10.4 / paperWidth;
float SearchButtonDivHeight = appHeight * 10.4 / paperHeight;

float ArtistNameDivX = appWidth * 90 / paperWidth;
float ArtistNameDivY = appHeight * 95 / paperHeight;
float ArtistNameDivWidth = appWidth * 36 / paperWidth;
float ArtistNameDivHeight = appHeight * 21 / paperHeight;

float ArtistPictureDivX = appWidth * 110 / paperWidth;
float ArtistPictureDivY = appHeight * 95 / paperHeight;
float ArtistPictureDivWidth = appWidth * 34 / paperWidth;
float ArtistPictureDivHeight = appHeight * 34 / paperHeight;

float AboutAuthorDivX = appWidth * 145 / paperWidth;
float AboutAuthorDivY = appHeight * 95 / paperHeight;
float AboutAuthorDivWidth = appWidth * 35 / paperWidth;
float AboutAuthorDivHeight = appHeight * 25 / paperHeight;

float BoxControlsDivX = appWidth * 96 / paperWidth;
float BoxControlsDivY = appHeight * 25 / paperHeight;
float BoxControlsDivWidth = appWidth * 70 / paperWidth;
float BoxControlsDivHeight = appHeight * 50 / paperHeight;

float PreviousSongDivX = appWidth * 110 / paperWidth;
float PreviousSongDivY = appHeight * 26 / paperHeight;
float PreviousSongDivWidth = appWidth * 12 / paperWidth;
float PreviousSongDivHeight = appHeight * 8 / paperHeight;

float Back5ButtonDivX = appWidth * 105 / paperWidth;
float Back5ButtonDivY = appHeight * 43 / paperHeight;
float Back5ButtonDivWidth = appWidth * 9 / paperWidth;
float Back5ButtonDivHeight = appHeight * 13 / paperHeight;

float PauseButtonDivX = appWidth * 101 / paperWidth;
float PauseButtonDivY = appHeight * 56 / paperHeight;
float PauseButtonDivWidth = appWidth * 19 / paperWidth;
float PauseButtonDivHeight = appHeight * 12 / paperHeight;

float Skip5ButtonDivX = appWidth * 101 / paperWidth;
float Skip5ButtonDivY = appHeight * 70 / paperHeight;
float Skip5ButtonDivWidth = appWidth * 13 / paperWidth;
float Skip5ButtonDivHeight = appHeight * 20 / paperHeight;

float NextSongDivX = appWidth * 150 / paperWidth;
float NextSongDivY = appHeight * 58 / paperHeight;
float NextSongDivWidth = appWidth * 11 / paperWidth;
float NextSongDivHeight = appHeight * 13 / paperHeight;

float VolumeDivX = appWidth * 145 / paperWidth;
float VolumeDivY = appHeight * 26 / paperHeight;
float VolumeDivWidth = appWidth * 70 / paperWidth;
float VolumeDivHeight = appHeight * 10 / paperHeight;

float FavouriteSongsDivX = appWidth * 175 / paperWidth;
float FavouriteSongsDivY = appHeight * 10 / paperHeight;
float FavouriteSongsDivWidth = appWidth * 22 / paperWidth;
float FavouriteSongsDivHeight = appHeight * 22 / paperHeight;

float SongsDivX = appWidth * 175 / paperWidth;
float SongsDivY = appHeight * 53 / paperHeight;
float SongsDivWidth = appWidth * 22 / paperWidth;
float SongsDivHeight = appHeight * 22 / paperHeight;

float PlaylistsDivX = appWidth * 175 / paperWidth;
float PlaylistsDivY = appHeight * 94 / paperHeight;
float PlaylistsDivWidth = appWidth * 22 / paperWidth;
float PlaylistsDivHeight = appHeight * 26 / paperHeight;

//rect( DivX, DivY, DivWidth, DivHeight );
rect( SongTitleDivX, SongTitleDivY, SongTitleDivWidth, SongTitleDivHeight );
rect( LyricsDivX, LyricsDivY, LyricsDivWidth, LyricsDivHeight );
rect( SongCoverDivX, SongCoverDivY, SongCoverDivWidth, SongCoverDivHeight );
rect( SearchButtonDivX, SearchButtonDivY, SearchButtonDivWidth, SearchButtonDivHeight );
rect( MenuButtonDivX, MenuButtonDivY, MenuButtonDivWidth, MenuButtonDivHeight );
rect( ArtistNameDivX, ArtistNameDivY, ArtistNameDivWidth, ArtistNameDivHeight );
rect( ArtistPictureDivX, ArtistPictureDivY, ArtistPictureDivWidth, ArtistPictureDivHeight );
rect( AboutAuthorDivX, AboutAuthorDivY, AboutAuthorDivWidth, AboutAuthorDivHeight );
rect( BoxControlsDivX, BoxControlsDivY, BoxControlsDivWidth, BoxControlsDivHeight );
rect( PreviousSongDivX, PreviousSongDivY, PreviousSongDivWidth, PreviousSongDivHeight );
rect( Back5ButtonDivX, Back5ButtonDivY, Back5ButtonDivWidth, Back5ButtonDivHeight );
rect( PauseButtonDivX, PauseButtonDivY, PauseButtonDivWidth, PauseButtonDivHeight );
rect( Skip5ButtonDivX, Skip5ButtonDivY, Skip5ButtonDivWidth, Skip5ButtonDivHeight );
rect( NextSongDivX, NextSongDivY, NextSongDivWidth, NextSongDivHeight );
rect( VolumeDivX, VolumeDivY, VolumeDivWidth, VolumeDivHeight );
rect( FavouriteSongsDivX, FavouriteSongsDivY, FavouriteSongsDivWidth, FavouriteSongsDivHeight );
rect( SongsDivX, SongsDivY, SongsDivWidth, SongsDivHeight );
rect( PlaylistsDivX, PlaylistsDivY, PlaylistsDivWidth, PlaylistsDivHeight );
