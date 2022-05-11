void gameStart(){
  if(lWin == false && rWin == false){
background(0);
 
  if(instructions == true) {pause();}
  else if(instructions == false){
  Shapes.get(ballIndex).lBounce(Shapes.get(lIndex).x, Shapes.get(lIndex).y,Shapes.get(lIndex).w,Shapes.get(lIndex).h);
  Shapes.get(ballIndex).rBounce(Shapes.get(rIndex).x, Shapes.get(rIndex).y,Shapes.get(rIndex).w,Shapes.get(rIndex).h);
  
  mLine.draw();
 };
  lLine.draw();
  
  rLine.draw();
  
  for(int i = 0; i < Shapes.size()-1; i++){
  Shapes.get(i).draw();
  };
  };
};
