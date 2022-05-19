void winScreen() {
  background(225);
  for (int i = 10; i < Shapes.size()-11; i++) {
    Shapes.get(i).draw();
  };

  if (mouseX >= Shapes.get(qIndex).x && mouseX <= Shapes.get(qIndex).x + Shapes.get(qIndex).w && mouseY >= Shapes.get(qIndex).y && mouseY <= Shapes.get(qIndex).y+Shapes.get(qIndex).h) {
    Shapes.get(qIndex).c = 70;
  } else  Shapes.get(qIndex).c = 30;
  if (mouseX >= Shapes.get(resetIndex).x && mouseX <= Shapes.get(resetIndex).x + Shapes.get(resetIndex).w && mouseY >= Shapes.get(resetIndex).y && mouseY <= Shapes.get(resetIndex).y+Shapes.get(resetIndex).h) {
    Shapes.get(resetIndex).c = 70;
  } else  Shapes.get(resetIndex).c = 30;
  // Shapes.get(4).draw();
};
