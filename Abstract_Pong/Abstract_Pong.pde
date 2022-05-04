//global variables
Line lLine,rLine,mLine;
ArrayList<Shape> Shapes = new ArrayList<Shape>();
//Circle cHex;
//Rectangle lPaddle, rPaddle;

Shape menu = new Shape(0,0,300,300){
  void draw(){
  fill(255);
  rect(x,y,w,h);
  fill(255);
};
 void lBounce(float x, float y, float w, float h){}
  void rBounce(float x, float y, float w, float h){}
  };


void setup(){
  fullScreen();
  lLine = new Line(width/50,height*0,width/50,height);
  mLine = new Line(width/2,height*0,width/2,height);
  rLine = new Line(width - (width/50),height*0,width - (width/50),height);
  Circle cHex = new Circle(width/2,height/2, width/75, width/75);
  Rectangle lPaddle = new Rectangle(width/50,height/2-(height/5)/2,width/85,height/5);
  Rectangle rPaddle = new Rectangle(width - (width/50),height/2-(height/5)/2,width/-85,height/5);
  Shapes.add(lPaddle);
  Shapes.add(rPaddle);
  Shapes.add(cHex);
 
};//end setup

void draw() {
  background(0);
  lLine.draw();
  mLine.draw();
  rLine.draw();
  Shapes.get(2).lBounce(Shapes.get(0).x, Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h);
  Shapes.get(2).rBounce(Shapes.get(1).x, Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h);
  
  for(int i = 0; i < Shapes.size(); i++){
  Shapes.get(i).draw();
  };

};//end draw


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h);
      rightPaddle.moveUP();
      Shapes.set(1,rightPaddle);
    };
    if (keyCode == DOWN) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h);
      rightPaddle.moveDown();
      Shapes.set(1,rightPaddle);
    };
  };
  if (key == 'w' || key == 'W') {
    Rectangle leftPaddle = new Rectangle(Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h);
      leftPaddle.moveUP();
      Shapes.set(0,leftPaddle);
  };
  if (key == 's' || key == 'S') {
   Rectangle leftPaddle = new Rectangle(Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h);
      leftPaddle.moveDown();
      Shapes.set(0,leftPaddle);
  };
};//end keypressed

void keyReleased(){
 if (key == CODED) {
    if (keyCode == UP) {
      Rectangle rightPaddle = new Rectangle(Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h);
      rightPaddle.moveStop();
      Shapes.set(1,rightPaddle);
    };
    if (keyCode == DOWN) {
        Rectangle rightPaddle = new Rectangle(Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h);
      rightPaddle.moveStop();
      Shapes.set(1,rightPaddle);
    };
  };
  if (key == 'w' || key == 'W') {
     Rectangle leftPaddle = new Rectangle(Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h);
      leftPaddle.moveStop();
      Shapes.set(0,leftPaddle);
  };
  if (key == 's' || key == 'S') {
     Rectangle leftPaddle = new Rectangle(Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h);
      leftPaddle.moveStop();
      Shapes.set(0,leftPaddle);
  };
};

void mousePressed() {
};//end mouse pressed

//end Main (driver) Program)
