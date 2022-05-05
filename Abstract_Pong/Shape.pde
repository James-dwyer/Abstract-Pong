abstract class Shape{
  //gobal variables
  float x,y,w,h;
  color c;
  
  //constructor
  Shape(float X, float Y, float W, float H,color Color){
   this.x = X;
   this.y = Y;
   this.w = W;
   this.h = H;
   this.c = Color;
  };
  abstract void draw();
  
  abstract void lBounce(float x, float y, float w, float h);
  abstract void rBounce(float x, float y, float w, float h);
  abstract void moveUP();
  abstract void moveDown();
  abstract  void moveStop();
  //methods
};
