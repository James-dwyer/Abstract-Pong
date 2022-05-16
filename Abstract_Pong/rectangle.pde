class Rectangle extends Shape{
  //gobal variables
  float lPaddleSpeed = 0, rPaddleSpeed = 0;
  boolean moveUP = false;
  boolean moveDown = false;
 
  //constructor
  Rectangle(float x, float y, float w, float h,color c){
  super(x,y,w,h,c);
  
  };
  //methods
  void draw(){
    if(instructions == false){
    if(moveUP == true) y += -6;
    if(moveDown == true) y -= -6;
    if(y <= height*0){y = height*0;};
    if(y >= height - h){y = height - h;};
    };
    
     fill(c);
  rect(x,y,w,h);
  fill(0);
  textSize(40);
  text(str(lScore),Shapes.get(0).x,Shapes.get(0).y,Shapes.get(0).w,Shapes.get(0).h);
    text(str(rScore),Shapes.get(1).x,Shapes.get(1).y,Shapes.get(1).w,Shapes.get(1).h);
   sBScore(); 
   if(lWin == true || rWin == true){
     fill(255);
     if(lWin == true){
     text("Left Player Wins",Shapes.get(5).x,Shapes.get(5).y, Shapes.get(5).w,Shapes.get(5).h);
     }else if (rWin == true){
      text("Right Player Wins",Shapes.get(5).x,Shapes.get(5).y, Shapes.get(5).w,Shapes.get(5).h);
     };
     text("Play Again!",Shapes.get(7).x,Shapes.get(7).y, Shapes.get(7).w,Shapes.get(7).h);
     text("Quit!",Shapes.get(6).x,Shapes.get(6).y, Shapes.get(6).w,Shapes.get(6).h);
   };
  //move();
   
  };
  
 void sBScore() {
   
};
;
  void lBounce(float paddleX, float paddleY, float paddleW, float paddleH){};
  void rBounce(float paddleX,float paddleY, float paddleW, float paddleH){};
  
  void moveUP(){moveUP = true;moveDown = false; };
  void moveDown(){moveDown = true;moveUP = false;};
  void moveStop(){moveUP = false;moveDown=false;};
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
