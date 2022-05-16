void reset(){
  
  lScore = 0;
  rScore = 0;
  Shapes.get(ballIndex).x = width/2;
  Shapes.get(ballIndex).y = height/2;
  lWin = false;
  rWin = false;
  instructions = false;
};
