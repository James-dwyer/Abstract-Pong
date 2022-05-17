class Circle extends Shape{
  //gobal variables
  int ballXSpeed = 0, ballYSpeed = 0;
  
  //constructor
  Circle(float x, float y, float w, float h,color c){
    super(x, y, w, h,c);
    
    
    while (ballXSpeed == 0)ballXSpeed = int(random(-7,7));
    while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
  };
  Circle(float X, float Y, float Width,float H,color C,color c){
    super(X,Y,Width,H,C);
    
    
  };
  
  //methods
   void draw(){
     fill(c);
  ellipse(x,y,w,h);
  if(instructions == false){
      move();
  }; 
  
   
  if(rBool == true){
    ballYSpeed = int(random(-5,5));
      ballXSpeed = int(random(-5,5));
       while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
       while (ballXSpeed == 0)ballXSpeed = int(random(-5,5));
       rBool = false;
  };
  println(ballXSpeed);
  bounce();
  score();


  }
  void starDraw(){
  fill(90);
    ellipse(X, Y, w,h);
    
    //ballBounce();
  };
   void score() {
    if (x-w/2 < lLine.x){
   
      
     Shapes.get(lIndex).y = height/2-Shapes.get(lIndex).h/2;
      Shapes.get(rIndex).y = height/2-Shapes.get(rIndex).h/2;
      
      x = width/2;
      y = width/2;
      
      ballYSpeed = int(random(-5,5));
      ballXSpeed = int(random(-5,5));
       while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
       while (ballXSpeed == 0)ballXSpeed = int(random(-5,5));
        rScore+= 1;
   
      
    };
     if (x+w/2 > rLine.x) {
     
   Shapes.get(lIndex).y = height/2-Shapes.get(lIndex).h/2;
      Shapes.get(rIndex).y = height/2-Shapes.get(rIndex).h/2;
      Shapes.get(ballIndex).x = width/2;
       ballYSpeed = int(random(-5,5));
       ballXSpeed = int(random(-5,5));
       while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
       while (ballXSpeed == 0)ballXSpeed = int(random(-5,5));
     lScore+= 1;
    
        
    };
    if(rScore == 3){
    rWin = true;
    };
    if(lScore == 3){
    lWin = true;
    };
};
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
  void sBounce(){
   if (dist(Shapes.get(ballIndex).x, (Shapes.get(ballIndex).y), X, Y) <= w + h) {
      ballXSpeed *= -1;
  };
  };

 void lBounce(float paddleX, float paddleY, float paddleW, float paddleH){
    if (x-w/2 <= paddleX+paddleW && y >= paddleY && y <= paddleY+paddleH) {
          ballXSpeed *= -1;
          ballXSpeed += 1;
        };
         if(ballXSpeed >= 19){
     if (x-w/2 <= paddleX+paddleW && y >= paddleY && y <= paddleY+paddleH) {
        ballXSpeed *= -1;
        ballXSpeed = 19;
        ballYSpeed = int(random(-6, 6));
        };
   };
 };
  void rBounce(float paddleX,float paddleY, float paddleW, float paddleH){
        if (x+w/2 >= paddleX+paddleW && y >= paddleY && y <= paddleY+paddleH) {
          ballXSpeed *= -1;
          ballXSpeed -= 1;
 };
   if(ballXSpeed <= -19){
    if (x+w/2 >= paddleX+paddleW && y >= paddleY && y <= paddleY+paddleH) {
          ballXSpeed *= -1;
        ballXSpeed = -19;
        ballYSpeed = int(random(-6, 6));
 };
   };
 };
 void moveUP(){};
 void moveDown(){};
 void moveStop(){};
 

};
