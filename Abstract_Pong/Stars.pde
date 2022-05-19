void starSetup() {

  while (redo == false) {
    for (int i = 0; i < Star.length; i++) {

      float diameter = random(width/70, width/15);
      float randX = random(width);
      float randY = random(0+diameter/2, height-diameter/2);
      Star[i] = new Circle(randX, randY, diameter/2, diameter/2, 210, 210);
      int j = i;
      while (j >= i) {
        if (randX+diameter/2 <= Star[i].x+Star[i].x && randX-diameter/2 > Star[i].x-Star[i].w/2) {
          randX = random(0+diameter/2, width-diameter/2);
          if (Star[i].x+Star[i].w <= randX+diameter/2 && Star[i].x-Star[i].w <= randX-diameter/2) {
            randX = random(0+diameter/2, height-diameter/2);
          };
        };
        j--;
      };

      Star[i] = new Circle(randX, randY, diameter/2, diameter/2, 210, 210);
      while (j >= i) {
        if (randY+diameter/2 <= Star[i].y+Star[i].h/2 && randY-diameter/2 >= Star[i].y-Star[i].h/2) {
          randY = random(0+diameter/2, height-diameter/2);
          if (Star[i].y+Star[i].h <= randY+diameter/2 && Star[i].y-Star[i].h <= randY-diameter/2) {
            randY = random(0+diameter/2, height-diameter/2);
          };
        }
        ;
        j--;
      };
      Star[i] = new Circle(randX, randY, diameter/2, diameter/2, 210, 210);
    };
    redo = true;
  };
  for (int i=0; i<Star.length; i++) {
    for (int X = Star.length-1; X > i; X--) {
      if (Star[i].x+Star[i].w/2 < Star[X].x+Star[X].w/2 && Star[i].x-Star[i].w/2 > Star[X].x-Star[X].w/2)redo = false;
      if (Star[i].y-Star[i].h/2 > Star[X].y-Star[X].h/2 && Star[i].y+Star[i].h/2 < Star[X].h+Star[X].h/2)redo = false;
    };
  };
};
