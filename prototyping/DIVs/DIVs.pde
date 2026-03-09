void setup(){
  fullScreen();
}

void draw(){

  // LIGHT RED BACKGROUND
  background(190,60,70);

  float appWidth = width;
  float appHeight = height;

  int paperWidth = 131;
  int paperHeight = 197;

  // LIGHT BLUE BORDERS
  stroke(120,200,255);
  strokeWeight(3);

  float SongTitleDivX = appWidth * 25 / paperWidth;
  float SongTitleDivY = appHeight * 5 / paperHeight;
  float SongTitleDivWidth = appWidth * 80 / paperWidth;
  float SongTitleDivHeight = appHeight * 12 / paperHeight;

  float LyricsDivX = appWidth * 5 / paperWidth;
  float LyricsDivY = appHeight * 25 / paperHeight;
  float LyricsDivWidth = appWidth * 50 / paperWidth;
  float LyricsDivHeight = appHeight * 60 / paperHeight;

  float SongCoverDivX = appWidth * 60 / paperWidth;
  float SongCoverDivY = appHeight * 25 / paperHeight;
  float SongCoverDivWidth = appWidth * 66 / paperWidth;
  float SongCoverDivHeight = appHeight * 60 / paperHeight;

  float SearchButtonDivX = appWidth * 114 / paperWidth;
  float SearchButtonDivY = appHeight * 5 / paperHeight;
  float SearchButtonDivWidth = appWidth * 12 / paperWidth;
  float SearchButtonDivHeight = appHeight * 12 / paperHeight;

  float MenuButtonDivX = appWidth * 5 / paperWidth;
  float MenuButtonDivY = appHeight * 5 / paperHeight;
  float MenuButtonDivWidth = appWidth * 12 / paperWidth;
  float MenuButtonDivHeight = appHeight * 12 / paperHeight;

  float ArtistNameDivX = appWidth * 95 / paperWidth;
  float ArtistNameDivY = appHeight * 95 / paperHeight;
  float ArtistNameDivWidth = appWidth * 31 / paperWidth;
  float ArtistNameDivHeight = appHeight * 10 / paperHeight;

  float ArtistPictureDivX = appWidth * 95 / paperWidth;
  float ArtistPictureDivY = appHeight * 107 / paperHeight;
  float ArtistPictureDivWidth = appWidth * 31 / paperWidth;
  float ArtistPictureDivHeight = appHeight * 28 / paperHeight;

  float AboutAuthorDivX = appWidth * 95 / paperWidth;
  float AboutAuthorDivY = appHeight * 137 / paperHeight;
  float AboutAuthorDivWidth = appWidth * 31 / paperWidth;
  float AboutAuthorDivHeight = appHeight * 18 / paperHeight;

  float BoxControlsDivX = appWidth * 5 / paperWidth;
  float BoxControlsDivY = appHeight * 95 / paperHeight;
  float BoxControlsDivWidth = appWidth * 85 / paperWidth;
  float BoxControlsDivHeight = appHeight * 40 / paperHeight;

  float PreviousSongDivX = appWidth * 10 / paperWidth;
  float PreviousSongDivY = appHeight * 105 / paperHeight;
  float PreviousSongDivWidth = appWidth * 12 / paperWidth;
  float PreviousSongDivHeight = appHeight * 12 / paperHeight;

  float Back5ButtonDivX = appWidth * 26 / paperWidth;
  float Back5ButtonDivY = appHeight * 105 / paperHeight;
  float Back5ButtonDivWidth = appWidth * 12 / paperWidth;
  float Back5ButtonDivHeight = appHeight * 12 / paperHeight;

  float PauseButtonDivX = appWidth * 45 / paperWidth;
  float PauseButtonDivY = appHeight * 102 / paperHeight;
  float PauseButtonDivWidth = appWidth * 16 / paperWidth;
  float PauseButtonDivHeight = appHeight * 16 / paperHeight;

  float Skip5ButtonDivX = appWidth * 67 / paperWidth;
  float Skip5ButtonDivY = appHeight * 105 / paperHeight;
  float Skip5ButtonDivWidth = appWidth * 12 / paperWidth;
  float Skip5ButtonDivHeight = appHeight * 12 / paperHeight;

  float NextSongDivX = appWidth * 83 / paperWidth;
  float NextSongDivY = appHeight * 105 / paperHeight;
  float NextSongDivWidth = appWidth * 12 / paperWidth;
  float NextSongDivHeight = appHeight * 12 / paperHeight;

  float VolumeDivX = appWidth * 10 / paperWidth;
  float VolumeDivY = appHeight * 130 / paperHeight;
  float VolumeDivWidth = appWidth * 70 / paperWidth;
  float VolumeDivHeight = appHeight * 8 / paperHeight;

  float FavouriteSongsDivX = appWidth * 10 / paperWidth;
  float FavouriteSongsDivY = appHeight * 160 / paperHeight;
  float FavouriteSongsDivWidth = appWidth * 25 / paperWidth;
  float FavouriteSongsDivHeight = appHeight * 25 / paperHeight;

  float SongsDivX = appWidth * 50 / paperWidth;
  float SongsDivY = appHeight * 160 / paperHeight;
  float SongsDivWidth = appWidth * 25 / paperWidth;
  float SongsDivHeight = appHeight * 25 / paperHeight;

  float PlaylistsDivX = appWidth * 90 / paperWidth;
  float PlaylistsDivY = appHeight * 160 / paperHeight;
  float PlaylistsDivWidth = appWidth * 25 / paperWidth;
  float PlaylistsDivHeight = appHeight * 25 / paperHeight;

  // BLACK BOXES
  fill(15,15,18);

  rect(SongTitleDivX, SongTitleDivY, SongTitleDivWidth, SongTitleDivHeight,15);
  rect(LyricsDivX, LyricsDivY, LyricsDivWidth, LyricsDivHeight,15);
  rect(SongCoverDivX, SongCoverDivY, SongCoverDivWidth, SongCoverDivHeight,15);
  rect(SearchButtonDivX, SearchButtonDivY, SearchButtonDivWidth, SearchButtonDivHeight,15);
  rect(MenuButtonDivX, MenuButtonDivY, MenuButtonDivWidth, MenuButtonDivHeight,15);
  rect(ArtistNameDivX, ArtistNameDivY, ArtistNameDivWidth, ArtistNameDivHeight,15);
  rect(ArtistPictureDivX, ArtistPictureDivY, ArtistPictureDivWidth, ArtistPictureDivHeight,15);
  rect(AboutAuthorDivX, AboutAuthorDivY, AboutAuthorDivWidth, AboutAuthorDivHeight,15);

  rect(BoxControlsDivX, BoxControlsDivY, BoxControlsDivWidth, BoxControlsDivHeight,15);
  rect(PreviousSongDivX, PreviousSongDivY, PreviousSongDivWidth, PreviousSongDivHeight,15);
  rect(Back5ButtonDivX, Back5ButtonDivY, Back5ButtonDivWidth, Back5ButtonDivHeight,15);
  rect(PauseButtonDivX, PauseButtonDivY, PauseButtonDivWidth, PauseButtonDivHeight,15);
  rect(Skip5ButtonDivX, Skip5ButtonDivY, Skip5ButtonDivWidth, Skip5ButtonDivHeight,15);
  rect(NextSongDivX, NextSongDivY, NextSongDivWidth, NextSongDivHeight,15);

  rect(VolumeDivX, VolumeDivY, VolumeDivWidth, VolumeDivHeight,15);

  rect(FavouriteSongsDivX, FavouriteSongsDivY, FavouriteSongsDivWidth, FavouriteSongsDivHeight,15);
  rect(SongsDivX, SongsDivY, SongsDivWidth, SongsDivHeight,15);
  rect(PlaylistsDivX, PlaylistsDivY, PlaylistsDivWidth, PlaylistsDivHeight,15);

}
