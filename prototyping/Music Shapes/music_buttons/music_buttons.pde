println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//

float DivX = appWidth * 1/4;
float DivY = appHeight * 1/4;
float DivWidth = appWidth * 1/2;
float DivHeight = appHeight * 1/2;


float newPlayTriX1 = DivX + DivWidth * 1/4;
float newPlayTriY1 = DivY + DivHeight * 1/4;

float newPlayTriX2 = DivX + DivWidth * 3/4;
float newPlayTriY2 = DivY + DivHeight * 1/2;

float newPlayTriX3 = DivX + DivWidth * 1/4;
float newPlayTriY3 = DivY + DivHeight * 3/4;


rect( DivX, DivY, DivWidth, DivHeight );
//triangle(newPlayTriX1, newPlayTriY1, newPlayTriX2, newPlayTriY2, newPlayTriX3, newPlayTriY3);


float PauseButtonDivX = appWidth * 1/4;
float PauseButtonDivY = appHeight * 1/4;
float PauseButtonDivWidth = appWidth * 1/2;
float PauseButtonDivHeight = appHeight * 1/2;


float PauseLeftX = PauseButtonDivX + PauseButtonDivWidth * 1/4;
float PauseLeftY = PauseButtonDivY + PauseButtonDivHeight * 1/4;
float PauseLeftWidth = PauseButtonDivWidth * 1/8;
float PauseLeftHeight = PauseButtonDivHeight * 1/2;


float PauseRightX = PauseButtonDivX + PauseButtonDivWidth * 4/8;
float PauseRightY = PauseButtonDivY + PauseButtonDivHeight * 1/4;
float PauseRightWidth = PauseButtonDivWidth * 1/8;
float PauseRightHeight = PauseButtonDivHeight * 1/2;



//rect(PauseButtonDivX, PauseButtonDivY, PauseButtonDivWidth, PauseButtonDivHeight);


//rect(PauseLeftX, PauseLeftY, PauseLeftWidth, PauseLeftHeight);
//rect(PauseRightX, PauseRightY, PauseRightWidth, PauseRightHeight);


float StopButtonDivX = appWidth * 1/3;
float StopButtonDivY = appHeight * 1/2;
float StopButtonDivWidth = appWidth * 1/4;
float StopButtonDivHeight = appHeight * 1/7;

float StopX = StopButtonDivX + StopButtonDivWidth * 1/7;
float StopY = StopButtonDivY + StopButtonDivHeight * 1/2;
float StopWidth = StopButtonDivWidth * 1/2;
float StopHeight = StopButtonDivHeight * 1/2;

//rect(StopButtonDivX, StopButtonDivY, StopButtonDivWidth, StopButtonDivHeight);
//rect(StopX, StopY, StopWidth, StopHeight);



float NextButtonDivX = appWidth * 1/4;
float NextButtonDivY = appHeight * 1/4;
float NextButtonDivWidth = appWidth * 1/2;
float NextButtonDivHeight = appHeight * 1/2;

float NextTriX1 = NextButtonDivX + NextButtonDivWidth * 1/4;
float NextTriY1 = NextButtonDivY + NextButtonDivHeight * 1/4;

float NextTriX2 = NextButtonDivX + NextButtonDivWidth * 3/4;
float NextTriY2 = NextButtonDivY + NextButtonDivHeight * 1/2;

float NextTriX3 = NextButtonDivX + NextButtonDivWidth * 1/4;
float NextTriY3 = NextButtonDivY + NextButtonDivHeight * 3/4;

float NextBarX = NextButtonDivX + NextButtonDivWidth * 3/4;
float NextBarY = NextButtonDivY + NextButtonDivHeight * 1/4;
float NextBarWidth = NextButtonDivWidth * 1/10;
float NextBarHeight = NextButtonDivHeight * 1/2;

//rect(NextButtonDivX, NextButtonDivY, NextButtonDivWidth, NextButtonDivHeight);
//triangle(NextTriX1, NextTriY1, NextTriX2, NextTriY2, NextTriX3, NextTriY3);
//rect(NextBarX, NextBarY, NextBarWidth, NextBarHeight);




float PrevButtonDivX = appWidth * 1/4;
float PrevButtonDivY = appHeight * 1/4;
float PrevButtonDivWidth = appWidth * 1/2;
float PrevButtonDivHeight = appHeight * 1/2;

float PrevTriX1 = PrevButtonDivX + PrevButtonDivWidth * 3/4;
float PrevTriY1 = PrevButtonDivY + PrevButtonDivHeight * 1/4;

float PrevTriX2 = PrevButtonDivX + PrevButtonDivWidth * 1/4;
float PrevTriY2 = PrevButtonDivY + PrevButtonDivHeight * 1/2;

float PrevTriX3 = PrevButtonDivX + PrevButtonDivWidth * 3/4;
float PrevTriY3 = PrevButtonDivY + PrevButtonDivHeight * 3/4;

float PrevBarX = PrevButtonDivX + PrevButtonDivWidth * 1/4;
float PrevBarY = PrevButtonDivY + PrevButtonDivHeight * 1/4;
float PrevBarWidth = PrevButtonDivWidth * 1/10;
float PrevBarHeight = PrevButtonDivHeight * 1/2;

//rect(PrevButtonDivX, PrevButtonDivY, PrevButtonDivWidth, PrevButtonDivHeight);
//triangle(PrevTriX1, PrevTriY1, PrevTriX2, PrevTriY2, PrevTriX3, PrevTriY3);
//rect(PrevBarX, PrevBarY, PrevBarWidth, PrevBarHeight);


float RewindButtonDivX = appWidth * 1/4;
float RewindButtonDivY = appHeight * 1/4;
float RewindButtonDivWidth = appWidth * 1/2;
float RewindButtonDivHeight = appHeight * 1/2;


float RewindTri1X1 = RewindButtonDivX + RewindButtonDivWidth * 3/4;
float RewindTri1Y1 = RewindButtonDivY + RewindButtonDivHeight * 1/4;

float RewindTri1X2 = RewindButtonDivX + RewindButtonDivWidth * 1/2;
float RewindTri1Y2 = RewindButtonDivY + RewindButtonDivHeight * 1/2;

float RewindTri1X3 = RewindButtonDivX + RewindButtonDivWidth * 3/4;
float RewindTri1Y3 = RewindButtonDivY + RewindButtonDivHeight * 3/4;


float RewindTri2X1 = RewindButtonDivX + RewindButtonDivWidth * 1/2;
float RewindTri2Y1 = RewindButtonDivY + RewindButtonDivHeight * 1/4;

float RewindTri2X2 = RewindButtonDivX + RewindButtonDivWidth * 1/4;
float RewindTri2Y2 = RewindButtonDivY + RewindButtonDivHeight * 1/2;

float RewindTri2X3 = RewindButtonDivX + RewindButtonDivWidth * 1/2;
float RewindTri2Y3 = RewindButtonDivY + RewindButtonDivHeight * 3/4;

//rect(RewindButtonDivX, RewindButtonDivY, RewindButtonDivWidth, RewindButtonDivHeight);
//triangle(RewindTri1X1, RewindTri1Y1, RewindTri1X2, RewindTri1Y2, RewindTri1X3, RewindTri1Y3);
//triangle(RewindTri2X1, RewindTri2Y1, RewindTri2X2, RewindTri2Y2, RewindTri2X3, RewindTri2Y3);




float LoopButtonDivX = appWidth * 1/4;
float LoopButtonDivY = appHeight * 1/4;
float LoopButtonDivWidth = appWidth * 1/2;
float LoopButtonDivHeight = appHeight * 1/2;


float LoopX1 = LoopButtonDivX + LoopButtonDivWidth * 1/4;
float LoopY1 = LoopButtonDivY + LoopButtonDivHeight * 1/4;

float LoopX2 = LoopButtonDivX + LoopButtonDivWidth * 3/4;
float LoopY2 = LoopButtonDivY + LoopButtonDivHeight * 1/4;


float LoopX3 = LoopButtonDivX + LoopButtonDivWidth * 3/4;
float LoopY3 = LoopButtonDivY + LoopButtonDivHeight * 3/4;

float LoopX4 = LoopButtonDivX + LoopButtonDivWidth * 1/4;
float LoopY4 = LoopButtonDivY + LoopButtonDivHeight * 3/4;

//rect(LoopButtonDivX, LoopButtonDivY, LoopButtonDivWidth, LoopButtonDivHeight);
//line(LoopX1, LoopY1, LoopX2, LoopY2);
//line(LoopX2, LoopY2, LoopX3, LoopY3);
//line(LoopX3, LoopY3, LoopX4, LoopY4);
//line(LoopX4, LoopY4, LoopX1, LoopY1);




float StopLoopButtonDivX = appWidth * 1/4;
float StopLoopButtonDivY = appHeight * 1/4;
float StopLoopButtonDivWidth = appWidth * 1/2;
float StopLoopButtonDivHeight = appHeight * 1/2;

float StopLoopX1 = StopLoopButtonDivX + StopLoopButtonDivWidth * 1/4;
float StopLoopY1 = StopLoopButtonDivY + StopLoopButtonDivHeight * 1/4;

float StopLoopX2 = StopLoopButtonDivX + StopLoopButtonDivWidth * 3/4;
float StopLoopY2 = StopLoopButtonDivY + StopLoopButtonDivHeight * 3/4;

//rect(StopLoopButtonDivX, StopLoopButtonDivY, StopLoopButtonDivWidth, StopLoopButtonDivHeight);
//line(StopLoopX1, StopLoopY1, StopLoopX2, StopLoopY2);




float Skip5ButtonDivX = appWidth * 1/4;
float Skip5ButtonDivY = appHeight * 1/4;
float Skip5ButtonDivWidth = appWidth * 1/2;
float Skip5ButtonDivHeight = appHeight * 1/2;


float Skip5TriX1 = Skip5ButtonDivX + Skip5ButtonDivWidth * 1/4;
float Skip5TriY1 = Skip5ButtonDivY + Skip5ButtonDivHeight * 1/4;

float Skip5TriX2 = Skip5ButtonDivX + Skip5ButtonDivWidth * 3/4;
float Skip5TriY2 = Skip5ButtonDivY + Skip5ButtonDivHeight * 1/2;

float Skip5TriX3 = Skip5ButtonDivX + Skip5ButtonDivWidth * 1/4;
float Skip5TriY3 = Skip5ButtonDivY + Skip5ButtonDivHeight * 3/4;


float FiveX1 = Skip5ButtonDivX + Skip5ButtonDivWidth * 3/4;
float FiveY1 = Skip5ButtonDivY + Skip5ButtonDivHeight * 1/4;

float FiveX2 = Skip5ButtonDivX + Skip5ButtonDivWidth * 7/8;
float FiveY2 = Skip5ButtonDivY + Skip5ButtonDivHeight * 1/4;

float FiveX3 = Skip5ButtonDivX + Skip5ButtonDivWidth * 3/4;
float FiveY3 = Skip5ButtonDivY + Skip5ButtonDivHeight * 1/2;

float FiveX4 = Skip5ButtonDivX + Skip5ButtonDivWidth * 7/8;
float FiveY4 = Skip5ButtonDivY + Skip5ButtonDivHeight * 1/2;

float FiveX5 = Skip5ButtonDivX + Skip5ButtonDivWidth * 3/4;
float FiveY5 = Skip5ButtonDivY + Skip5ButtonDivHeight * 3/4;

float FiveX6 = Skip5ButtonDivX + Skip5ButtonDivWidth * 7/8;
float FiveY6 = Skip5ButtonDivY + Skip5ButtonDivHeight * 3/4;


//rect(Skip5ButtonDivX, Skip5ButtonDivY, Skip5ButtonDivWidth, Skip5ButtonDivHeight);
//triangle(Skip5TriX1, Skip5TriY1, Skip5TriX2, Skip5TriY2, Skip5TriX3, Skip5TriY3);


//line(FiveX1, FiveY1, FiveX2, FiveY2); //top
//line(FiveX1, FiveY1, FiveX3, FiveY3); //down left
//line(FiveX3, FiveY3, FiveX4, FiveY4); //middle
//line(FiveX4, FiveY4, FiveX6, FiveY6); //down right
//line(FiveX5, FiveY5, FiveX6, FiveY6); //bottom


float Prev5ButtonDivX = appWidth * 1/4;
float Prev5ButtonDivY = appHeight * 1/4;
float Prev5ButtonDivWidth = appWidth * 1/2;
float Prev5ButtonDivHeight = appHeight * 1/2;


float Prev5TriX1 = Prev5ButtonDivX + Prev5ButtonDivWidth * 3/4;
float Prev5TriY1 = Prev5ButtonDivY + Prev5ButtonDivHeight * 1/4;

float Prev5TriX2 = Prev5ButtonDivX + Prev5ButtonDivWidth * 1/4;
float Prev5TriY2 = Prev5ButtonDivY + Prev5ButtonDivHeight * 1/2;

float Prev5TriX3 = Prev5ButtonDivX + Prev5ButtonDivWidth * 3/4;
float Prev5TriY3 = Prev5ButtonDivY + Prev5ButtonDivHeight * 3/4;


float P5X1 = Prev5ButtonDivX + Prev5ButtonDivWidth * 1/8;
float P5Y1 = Prev5ButtonDivY + Prev5ButtonDivHeight * 1/4;

float P5X2 = Prev5ButtonDivX + Prev5ButtonDivWidth * 1/4;
float P5Y2 = Prev5ButtonDivY + Prev5ButtonDivHeight * 1/4;

float P5X3 = Prev5ButtonDivX + Prev5ButtonDivWidth * 1/8;
float P5Y3 = Prev5ButtonDivY + Prev5ButtonDivHeight * 1/2;

float P5X4 = Prev5ButtonDivX + Prev5ButtonDivWidth * 1/4;
float P5Y4 = Prev5ButtonDivY + Prev5ButtonDivHeight * 1/2;

float P5X5 = Prev5ButtonDivX + Prev5ButtonDivWidth * 1/8;
float P5Y5 = Prev5ButtonDivY + Prev5ButtonDivHeight * 3/4;

float P5X6 = Prev5ButtonDivX + Prev5ButtonDivWidth * 1/4;
float P5Y6 = Prev5ButtonDivY + Prev5ButtonDivHeight * 3/4;

//rect(Prev5ButtonDivX, Prev5ButtonDivY, Prev5ButtonDivWidth, Prev5ButtonDivHeight);
//triangle(Prev5TriX1, Prev5TriY1, Prev5TriX2, Prev5TriY2, Prev5TriX3, Prev5TriY3);

//line(P5X1, P5Y1, P5X2, P5Y2);
//line(P5X1, P5Y1, P5X3, P5Y3);
//line(P5X3, P5Y3, P5X4, P5Y4);
//line(P5X4, P5Y4, P5X6, P5Y6);
//line(P5X5, P5Y5, P5X6, P5Y6);
