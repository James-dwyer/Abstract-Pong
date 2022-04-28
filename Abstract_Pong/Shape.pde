abstract class Shape{
  //gobal variables
  float x,y,w,h;
  
  //constructor
  Shape(float X, float Y, float W, float H){
   this.x = X;
   this.y = Y;
   this.w = W;
   this.h = H;
  };
  abstract void draw();
  
  abstract void lBounce(float x, float y, float w, float h);
  abstract void rBounce(float x, float y, float w, float h);
  //methods
};
