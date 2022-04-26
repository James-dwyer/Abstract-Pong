//global variables

Circle cHex;
Rectangle lPaddle, rPaddle;
void setup(){
  fullScreen();
  
  cHex = new Circle(width/2,height/2, width/75, width/75);
  lPaddle = new Rectangle(width/50,height/2-(height/5)/2,width/85,height/5);
  rPaddle = new Rectangle(width - (width/50),height/2-(height/5)/2,width/-85,height/5);
};//end setup

void draw() {
  background(0);
  cHex.draw();
  lPaddle.draw();
  rPaddle.draw();
};//end draw


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      rPaddle.rPaddleSpeed = -6;
    };
    if (keyCode == DOWN) {
      rPaddle.rPaddleSpeed = 6;
    };
  };
  if (key == 'w' || key == 'W') {
    lPaddle.lPaddleSpeed = -6;
  };
  if (key == 's' || key == 'S') {
   lPaddle.lPaddleSpeed = 6;
  };
};//end keypressed

void keyReleased(){
 if (key == CODED) {
    if (keyCode == UP) {
      rPaddle.rPaddleSpeed = 0;
    };
    if (keyCode == DOWN) {
      rPaddle.rPaddleSpeed = 0;
    };
  };
  if (key == 'w' || key == 'W') {
   lPaddle.lPaddleSpeed = 0;
  };
  if (key == 's' || key == 'S') {
    lPaddle.lPaddleSpeed = 0;
  };
};

void mousePressed() {
};//end mouse pressed

//end Main (driver) Program)
