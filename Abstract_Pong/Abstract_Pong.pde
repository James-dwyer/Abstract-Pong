//global variables
Line lLine,rLine,mLine;

ArrayList<Shape> Shapes = new ArrayList<Shape>();
boolean instructions = false;
color bColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));
color pColor = color(225,225,225,80);
color res = 210,ex = 210,reset = 210;
PFont pauseFont;
boolean rGoal,lGoal,rWin = false,lWin = false,rBool = false,redo = false;
 int lScore = 0;
  int rScore = 0;
int ballIndex = 4;
int lIndex = 2;
int rIndex = 3;
int pauseIndex = 13;
Rectangle resume = new Rectangle(width/2,height/3,width/9,height/6,res);
Rectangle restart = new Rectangle(width/2,height/3,width/9,height/6,reset);
Rectangle exit = new Rectangle(width/2,height/3,width/9,height/6,ex);
 Circle[] Star = new Circle[5];


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
  Rectangle win = new Rectangle(width/2-((width/2)/3), height/4, width/3, height/10,30);
  Rectangle quit = new Rectangle(width*3/4-width/5, height/2, width/5, height/15,30);
  Rectangle pAgain = new Rectangle(width/4, height/2, width/5, height/15,30);
    lLine = new Line(width/50,height*0,width/50,height);
    starSetup();
  mLine = new Line(width/2,height*0,width/2,height);
  rLine = new Line(width - (width/50),height*0,width - (width/50),height);
  
  Shapes.add(lScoreboard);
  Shapes.add(rScoreboard);
  Shapes.add(lPaddle);
  Shapes.add(rPaddle);
  Shapes.add(cHex);
  for (int i = 0; i < Star.length; i++) {
     Shapes.add(Star[i]);
    };
  
  
  Shapes.add(win);
  Shapes.add(quit);
  Shapes.add(pAgain);
  
      
    
  Shapes.add(pause);

};//end setup

void draw() {
  if(lWin == false && rWin == false){
    println(Shapes.size());
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
    rBool = true;
  reset();
  instructions = false;
 
  };
  if(mouseX >= exit.x && mouseX <= exit.x+exit.w && mouseY >= exit.y && mouseY <= exit.y+exit.h){
  exit();
  };
  }else {Shapes.remove(ballIndex);
  
  Circle cHex = new Circle(width/2,height/2, width/75, width/75,bColor);
  Shapes.add(ballIndex,cHex);}
  if(lWin == true || rWin == true){
  if(mouseX >= Shapes.get(6).x && mouseX <= Shapes.get(6).x + Shapes.get(6).w && mouseY >= Shapes.get(6).y && mouseY <= Shapes.get(6).y+Shapes.get(6).h){
    exit();
  };
  if(mouseX >= Shapes.get(7).x && mouseX <= Shapes.get(7).x + Shapes.get(7).w && mouseY >= Shapes.get(7).y && mouseY <= Shapes.get(7).y+Shapes.get(7).h){
  reset();
  };
  };
  
};//end mouse pressed

//end Main (driver) Program)
