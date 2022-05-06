//global variables
Line lLine,rLine,mLine;

ArrayList<Shape> Shapes = new ArrayList<Shape>();
boolean instructions = false;
color bColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));
color pColor = color(225,225,225,80);
color res = 210,ex = 210,reset = 210;
PFont pauseF;
Rectangle resume = new Rectangle(width/2,height/3,width/9,height/6,res);
Rectangle restart = new Rectangle(width/2,height/3,width/9,height/6,reset);
Rectangle exit = new Rectangle(width/2,height/3,width/9,height/6,ex);


//Circle cHex;
//Rectangle lPaddle, rPaddle;

Shape pause = new Shape(width*0,height*0,width,height,pColor){
  void lBounce(float x, float y, float w, float h){}
  void rBounce(float x, float y, float w, float h){}
  void moveUP(){};
  void moveDown(){};
  void moveStop(){};
  
  

  void draw(){
   fill(res);
  resume.draw();
  fill(reset);
  restart.draw();
  fill(ex);
  exit.draw();
  fill(c);
  rect(x,y,w,h);

};

  };


void setup(){
  fullScreen();
  noStroke();
  smooth();
  frameRate(60);
  
  Circle cHex = new Circle(width/2,height/2, width/75, width/75,bColor);
  Rectangle lPaddle = new Rectangle(width/50,height/2-(height/5)/2,width/85,height/5,#FF0000);
  Rectangle rPaddle = new Rectangle(width - (width/50),height/2-(height/5)/2,width/-85,height/5,#0000FF);
  Shapes.add(lPaddle);
  Shapes.add(rPaddle);
  Shapes.add(cHex);
  Shapes.add(pause);
  lLine = new Line(width/50,height*0,width/50,height);
  mLine = new Line(width/2,height*0,width/2,height);
  rLine = new Line(width - (width/50),height*0,width - (width/50),height);
};//end setup

void draw() {
  background(0);
 
  if(instructions == true) {pause();}
  else if(instructions == false){
  Shapes.get(2).lBounce(Shapes.get(0).x, Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h);
  Shapes.get(2).rBounce(Shapes.get(1).x, Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h);
  mLine.draw();
 };
  lLine.draw();
  
  rLine.draw();
  
  for(int i = 0; i < Shapes.size()-1; i++){
  Shapes.get(i).draw();
  };
   

};//end draw


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h,Shapes.get(1).c);
      rightPaddle.moveUP();
      Shapes.set(1,rightPaddle);
    };
    if (keyCode == DOWN) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h,Shapes.get(1).c);
      rightPaddle.moveDown();
      Shapes.set(1,rightPaddle);
    };
  };
  if (key == 'w' || key == 'W') {
    Rectangle leftPaddle = new Rectangle(Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h,Shapes.get(0).c);
      leftPaddle.moveUP();
      Shapes.set(0,leftPaddle);
  };
  if (key == 's' || key == 'S') {
   Rectangle leftPaddle = new Rectangle(Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h,Shapes.get(0).c);
      leftPaddle.moveDown();
      Shapes.set(0,leftPaddle);
  };
   if(instructions == true){
  if(key == 'i' || key == 'I') instructions = false;
  }else if(key == 'i' || key == 'I') instructions = true;
};//end keypressed

void keyReleased(){
 if (key == CODED) {
    if (keyCode == UP) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h,Shapes.get(1).c);
      rightPaddle.moveStop();
      Shapes.set(1,rightPaddle);
    };
    if (keyCode == DOWN) {
        Rectangle rightPaddle = new Rectangle(Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h,Shapes.get(1).c);
      rightPaddle.moveStop();
      Shapes.set(1,rightPaddle);
    };
  };
  if (key == 'w' || key == 'W') {
     Rectangle leftPaddle = new Rectangle(Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h,Shapes.get(0).c);
      leftPaddle.moveStop();
      Shapes.set(0,leftPaddle);
  };
  if (key == 's' || key == 'S') {
     Rectangle leftPaddle = new Rectangle(Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h,Shapes.get(0).c);
      leftPaddle.moveStop();
      Shapes.set(0,leftPaddle);
  };
 
};

void mousePressed() {
};//end mouse pressed

//end Main (driver) Program)
