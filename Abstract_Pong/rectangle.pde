class Rectangle extends Shape{
  //gobal variables
  float lPaddleSpeed = 0, rPaddleSpeed = 0;
  //constructor
  Rectangle(float x, float y, float w, float h){
  super(x,y,w,h);
  };
  //methods
  void draw(){
  rect(x,y,w,h);
  //move();
  };
  //void move(){
  //lPaddle.y += lPaddle.lPaddleSpeed;
  //rPaddle.y += rPaddle.rPaddleSpeed;
  //if (lPaddle.y <= displayHeight*0)lPaddle.y = displayHeight*0;
  //if (lPaddle.y+h >= displayHeight)lPaddle.y = displayHeight-h;
  //  if (rPaddle.y <= displayHeight*0) rPaddle.y = displayHeight*0;
  //  if (rPaddle.y+h >= displayHeight)rPaddle.y = displayHeight-h;
  //};
  void lBounce(float paddleX, float paddleY, float paddleW, float paddleH){};
  void rBounce(float paddleX,float paddleY, float paddleW, float paddleH){};
};
