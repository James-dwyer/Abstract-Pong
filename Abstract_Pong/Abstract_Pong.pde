//global variables

Circle cHex;
Rectangle lPaddle, rPaddle;
void setup(){
  fullScreen();
  
  cHex = new Circle(width/2,height/2, width/50, width/50);
  lPaddle = new Rectangle(width/20,height/2-(height/5)/2,width/55,height/5);
  rPaddle = new Rectangle(width - width/20,height/2-(height/5)/2,width/55,height/5);
};//end setup

void draw() {
  cHex.draw();
  lPaddle.draw();
  
  rPaddle.draw();
};//end draw


void keyPressed() {
};//end keypressed

void mousePressed() {
};//end mouse pressed

//end Main (driver) Program)
