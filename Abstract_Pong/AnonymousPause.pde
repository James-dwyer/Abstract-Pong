Shape pause = new Shape(width*0,height*0,width,height,pColor){
  void lBounce(float x, float y, float w, float h){}
  void rBounce(float x, float y, float w, float h){}
  void moveUP(){};
  void moveDown(){};
  void moveStop(){};

  
  String resString = "Resume",resetString = "Reset",exitString = "Exit";
  
  

  void draw(){
   fill(res);
  resume.draw();
  fill(reset);
  restart.draw();
  fill(ex);
  exit.draw();
  fill(c);
  rect(x,y,w,h);
  
  fill(0);
  textSize(25);
  text(resString,resume.x,resume.y,resume.w,resume.h);
  text(resetString,restart.x,restart.y,restart.w,restart.h);
  text(exitString,exit.x,exit.y,exit.w,exit.h);
   textSize(50);
   fill(255);
  text("Pause",resume.x - resume.w,resume.y-resume.h,resume.x+resume.w*2,resume.h);

};

  };
