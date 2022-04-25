//global variables

Circle cHex;
void setup(){
  fullScreen();
  
  cHex = new Circle(width/2, height/2, width/4, height/4);
};//end setup

void draw() {
  cHex.draw();
};//end draw


void keyPressed() {
};//end keypressed

void mousePressed() {
};//end mouse pressed

//end Main (driver) Program)
