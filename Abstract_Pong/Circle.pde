class Circle extends Shape{
  //gobal variables
  int ballXSpeed = 0, ballYSpeed = 0;
  //constructor
  Circle(float x, float y, float w, float h){
    super(x, y, w, h);
    
    
    while (ballXSpeed == 0)ballXSpeed = int(random(-7,7));
    while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
  };
  //methods
   void draw(){
  ellipse(x,y,w,h);
  
  move();
  bounce();
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
   if (x-w/2 <= lPaddle.x+lPaddle.w && y >= lPaddle.y && y <= lPaddle.y+lPaddle.h) {
          ballXSpeed *= -1;
          ballXSpeed += 1;
        };
        if (x+w/2 >= rPaddle.x+rPaddle.w && y >= rPaddle.y && y <= rPaddle.y+rPaddle.h) {
          ballXSpeed *= -1;
          ballXSpeed -= 1;
   };
   
};
};
