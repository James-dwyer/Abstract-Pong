class Circle extends Shape{
  //gobal variables
  int ballXSpeed = 0, ballYSpeed = 0;
  boolean rGoal,lGoal;
  //constructor
  Circle(float x, float y, float w, float h,color c){
    super(x, y, w, h,c);
    
    
    while (ballXSpeed == 0)ballXSpeed = int(random(-7,7));
    while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
  };
  //methods
   void draw(){
     fill(c);
  ellipse(x,y,w,h);
  if(instructions == false){
  move();
  };
  bounce();
  score();
  }
  
  void move(){
  x += ballXSpeed;
  y += ballYSpeed;
  };
  void bounce(){
   if (y-h/2 <= height*0 || y+h/2 >= height) {
      ballYSpeed = ballYSpeed*-1;
    }
    if (x+w/2 >= width || x-w/2  <= width*0) ballXSpeed *= -1;  
   
};
void score() {
    if (x-w/2 < lLine.x) {
     
     Shapes.get(0).y = height/2-Shapes.get(0).h/2;
      Shapes.get(1).y = height/2-Shapes.get(1).h/2;
      x = width/2;
      y = width/2;
      ballYSpeed = int(random(-5,5));
      ballXSpeed = int(random(-5,5));
       while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
       while (ballXSpeed == 0)ballXSpeed = int(random(-5,5));
       rGoal = true;
      
    };
     if (x+w/2 > rLine.x) {
     
     Shapes.get(0).y = height/2-Shapes.get(0).h/2;
      Shapes.get(1).y = height/2-Shapes.get(1).h/2;
      Shapes.get(2).x = width/2;
       ballYSpeed = int(random(-5,5));
       ballXSpeed = int(random(-5,5));
       while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
       while (ballXSpeed == 0)ballXSpeed = int(random(-5,5));
      
    };
};
 void lBounce(float paddleX, float paddleY, float paddleW, float paddleH){
    if (x-w/2 <= paddleX+paddleW && y >= paddleY && y <= paddleY+paddleH) {
          ballXSpeed *= -1;
          ballXSpeed += 1;
        };
 };
  void rBounce(float paddleX,float paddleY, float paddleW, float paddleH){
        if (x+w/2 >= paddleX+paddleW && y >= paddleY && y <= paddleY+paddleH) {
          ballXSpeed *= -1;
          ballXSpeed -= 1;
 };
 }
 void moveUP(){};
 void moveDown(){};
 void moveStop(){};

};
