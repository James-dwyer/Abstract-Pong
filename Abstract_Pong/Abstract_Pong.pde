//global variables
Line lLine,rLine,mLine;

ArrayList<Shape> Shapes = new ArrayList<Shape>();
boolean instructions = false;
color bColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));
color pColor = color(225,225,225,80);
color res = 210,ex = 210,reset = 210;
PFont pauseFont;
boolean rGoal,lGoal,rWin = false,lWin = false;
 int lScore = 0;
  int rScore = 0;
int ballIndex = 4;
int lIndex = 2;
int rIndex = 3;
int pauseIndex = 5;
Rectangle resume = new Rectangle(width/2,height/3,width/9,height/6,res);
Rectangle restart = new Rectangle(width/2,height/3,width/9,height/6,reset);
Rectangle exit = new Rectangle(width/2,height/3,width/9,height/6,ex);



//Circle cHex;
//Rectangle lPaddle, rPaddle;



void setup(){
  fullScreen();
  noStroke();
  smooth();
  frameRate(60);
  pauseFont = createFont("arial",60);
  textAlign(CENTER,CENTER);
  Circle cHex = new Circle(width/2,height/2, width/75, width/75,bColor);
  Rectangle lPaddle = new Rectangle(width/50,height/2-(height/5)/2,width/85,height/5,#FF0000);
  Rectangle rPaddle = new Rectangle(width - (width/50),height/2-(height/5)/2,width/-85,height/5,#0000FF);
  Rectangle lScoreboard = new Rectangle(width*1/4-(width/10)/2, height*0, width/10, height/8, 200);
  Rectangle rScoreboard = new Rectangle(width*3/4-(width/10)/2, height*0, width/10, height/8, 200);
  Rectangle win = new Rectangle(width/2-((width/2)/3), height/4, width/3, height/10,215);
  Rectangle quit = new Rectangle(width*3/4-width/5, height/2, width/5, height/15,215);
  Rectangle pAgain = new Rectangle(width/4, height/2, width/5, height/15,215);
  Shapes.add(lScoreboard);
  Shapes.add(rScoreboard);
  Shapes.add(lPaddle);
  Shapes.add(rPaddle);
  Shapes.add(cHex);
  if(lWin == true || rWin == true){
  Shapes.add(win);
  Shapes.add(quit);
  Shapes.add(pAgain);
  };
  Shapes.add(pause);
  lLine = new Line(width/50,height*0,width/50,height);
  mLine = new Line(width/2,height*0,width/2,height);
  rLine = new Line(width - (width/50),height*0,width - (width/50),height);
};//end setup

void draw() {
  if(lWin == false && rWin == false){
    gameStart();
  }else{winScreen();};

   

};//end draw


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(rIndex).x,Shapes.get(rIndex).y,Shapes.get(rIndex).w,Shapes.get(rIndex).h,Shapes.get(rIndex).c);
      rightPaddle.moveUP();
      Shapes.set(rIndex,rightPaddle);
    };
    if (keyCode == DOWN) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(rIndex).x,Shapes.get(rIndex).y,Shapes.get(rIndex).w,Shapes.get(rIndex).h,Shapes.get(rIndex).c);
      rightPaddle.moveDown();
      Shapes.set(rIndex,rightPaddle);
    };
  };
  if (key == 'w' || key == 'W') {
    Rectangle leftPaddle = new Rectangle(Shapes.get(lIndex).x,Shapes.get(lIndex).y,Shapes.get(lIndex).w,Shapes.get(lIndex).h,Shapes.get(lIndex).c);
      leftPaddle.moveUP();
      Shapes.set(lIndex,leftPaddle);
  };
  if (key == 's' || key == 'S') {
   Rectangle leftPaddle = new Rectangle(Shapes.get(lIndex).x,Shapes.get(lIndex).y,Shapes.get(lIndex).w,Shapes.get(lIndex).h,Shapes.get(lIndex).c);
      leftPaddle.moveDown();
      Shapes.set(lIndex,leftPaddle);
  };
   if(instructions == true){
  if(key == 'i' || key == 'I') instructions = false;
  }else if(key == 'i' || key == 'I') instructions = true;
};//end keypressed

void keyReleased(){
 if (key == CODED) {
    if (keyCode == UP) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(rIndex).x,Shapes.get(rIndex).y,Shapes.get(rIndex).w,Shapes.get(rIndex).h,Shapes.get(rIndex).c);
      rightPaddle.moveStop();
      Shapes.set(rIndex,rightPaddle);
    };
    if (keyCode == DOWN) {
        Rectangle rightPaddle = new Rectangle(Shapes.get(rIndex).x,Shapes.get(rIndex).y,Shapes.get(rIndex).w,Shapes.get(rIndex).h,Shapes.get(rIndex).c);
      rightPaddle.moveStop();
      Shapes.set(rIndex,rightPaddle);
    };
  };
  if (key == 'w' || key == 'W') {
     Rectangle leftPaddle = new Rectangle(Shapes.get(lIndex).x,Shapes.get(lIndex).y,Shapes.get(lIndex).w,Shapes.get(lIndex).h,Shapes.get(lIndex).c);
      leftPaddle.moveStop();
      Shapes.set(lIndex,leftPaddle);
  };
  if (key == 's' || key == 'S') {
     Rectangle leftPaddle = new Rectangle(Shapes.get(lIndex).x,Shapes.get(lIndex).y,Shapes.get(lIndex).w,Shapes.get(lIndex).h,Shapes.get(lIndex).c);
      leftPaddle.moveStop();
      Shapes.set(lIndex,leftPaddle);
  };
 
};

void mousePressed() {
  if(instructions == true){
  if(mouseX >= resume.x && mouseX <= resume.x + resume.w && mouseY >= resume.y && mouseY <= resume.y+resume.h){
    instructions = false;
  };
  if(mouseX >= restart.x && mouseX <= restart.x+restart.w && mouseY >= restart.y && mouseY <= restart.y+restart.h){
  gameStart();
  };
  if(mouseX >= exit.x && mouseX <= exit.x+exit.w && mouseY >= exit.y && mouseY <= exit.y+exit.h){
  exit();
  };
  };
};//end mouse pressed

//end Main (driver) Program)
