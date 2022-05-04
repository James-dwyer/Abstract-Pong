class Line{
float x,y,w,h;
 Line(float X, float Y, float W, float H){
 x = X;
 y = Y;
 w = W;
 h = H;
 };

  void draw(){
    stroke(255);
  line(x,y,w,h);
  };
 
};
