class Rectangle extends Shape {
  //gobal variables
  float lPaddleSpeed = 0, rPaddleSpeed = 0;
  boolean moveUP = false;
  boolean moveDown = false;

  //constructor
  Rectangle(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  };
  //methods
  void draw() {
    if (instructions == false) {
      if (moveUP == true) y += -6;
      if (moveDown == true) y -= -6;
      if (y <= height*0) {
        y = height*0;
      };
      if (y >= height - h) {
        y = height - h;
      };
    };

    fill(c);
    rect(x, y, w, h);
    fill(0);
    textSize(40);
    if(rules == false){
    text(str(lScore), Shapes.get(0).x, Shapes.get(0).y, Shapes.get(0).w, Shapes.get(0).h);
    text(str(rScore), Shapes.get(1).x, Shapes.get(1).y, Shapes.get(1).w, Shapes.get(1).h);
    };
    sBScore(); 
    if (lWin == true || rWin == true) {
      fill(255);
      if (lWin == true) {
        text("Left Player Wins", Shapes.get(wIndex).x, Shapes.get(wIndex).y, Shapes.get(wIndex).w, Shapes.get(wIndex).h);
      } else if (rWin == true) {
        text("Right Player Wins", Shapes.get(wIndex).x, Shapes.get(wIndex).y, Shapes.get(wIndex).w, Shapes.get(wIndex).h);
      };
      text("Play Again!", Shapes.get(resetIndex).x, Shapes.get(resetIndex).y, Shapes.get(resetIndex).w, Shapes.get(resetIndex).h);
      text("Quit!", Shapes.get(qIndex).x, Shapes.get(qIndex).y, Shapes.get(qIndex).w, Shapes.get(qIndex).h);
      
    };
    if(rules == true){
    text("Left: W and S",Shapes.get(13).x,Shapes.get(13).y,Shapes.get(13).w,Shapes.get(13).h);
    text("Slow",Shapes.get(14).x,Shapes.get(14).y,Shapes.get(14).w,Shapes.get(14).h);
    text("Regular",Shapes.get(15).x,Shapes.get(15).y,Shapes.get(15).w,Shapes.get(15).h);
    text("Fast",Shapes.get(16).x,Shapes.get(16).y,Shapes.get(16).w,Shapes.get(16).h);
    text("Right: UP and Down",Shapes.get(17).x,Shapes.get(17).y,Shapes.get(17).w,Shapes.get(17).h);
    text("Slow",Shapes.get(18).x,Shapes.get(18).y,Shapes.get(18).w,Shapes.get(18).h);
    text("Regular",Shapes.get(19).x,Shapes.get(19).y,Shapes.get(19).w,Shapes.get(19).h);
    text("Fast",Shapes.get(20).x,Shapes.get(20).y,Shapes.get(20).w,Shapes.get(20).h);
    text
    
    };
    //move();
  };

  void sBScore() {
    if (lScore == 0) {
      Shapes.get(lIndex).h = height/5;
    };
    if (lScore == 1) {
      Shapes.get(lIndex).h = height/8;
    };
    if (lScore == 2) {
      Shapes.get(lIndex).h = height/10;
    };
    if (rScore == 0) {
      Shapes.get(rIndex).h = height/5;
    };
    if (rScore == 1) {
      Shapes.get(rIndex).h = height/8;
    };
    if (rScore == 2) {
      Shapes.get(rIndex).h = height/10;
    };
  };
  ;
  void lBounce(float paddleX, float paddleY, float paddleW, float paddleH) {
  };
  void rBounce(float paddleX, float paddleY, float paddleW, float paddleH) {
  };

  void moveUP() {
    moveUP = true;
    moveDown = false;
  };
  void moveDown() {
    moveDown = true;
    moveUP = false;
  };
  void moveStop() {
    moveUP = false;
    moveDown=false;
  };
  void starDraw() {
  };
  ;
};
//void move(){
//lPaddle.y += lPaddle.lPaddleSpeed;
//rPaddle.y += rPaddle.rPaddleSpeed;
//if (lPaddle.y <= displayHeight*0)lPaddle.y = displayHeight*0;
//if (lPaddle.y+h >= displayHeight)lPaddle.y = displayHeight-h;
//  if (rPaddle.y <= displayHeight*0) rPaddle.y = displayHeight*0;
//  if (rPaddle.y+h >= displayHeight)rPaddle.y = displayHeight-h;
//}
