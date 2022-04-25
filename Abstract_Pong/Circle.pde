class Circle extends Shape{
  //gobal variables
  
  //constructor
  Circle(float x, float y, float w, float h){
    super(x, y, w, h);
  };
  //methods
   void draw(){
  ellipse(x,y,w,h);
  }
};
