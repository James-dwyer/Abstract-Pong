void winScreen(){
  background(225);
for(int i = 10; i < Shapes.size()-1;i++){
  Shapes.get(i).draw();
};

if(mouseX >= Shapes.get(10).x && mouseX <= Shapes.get(10).x + Shapes.get(10).w && mouseY >= Shapes.get(10).y && mouseY <= Shapes.get(10).y+Shapes.get(10).h){
  Shapes.get(6).c = 70;
}else  Shapes.get(6).c = 30;
if(mouseX >= Shapes.get(11).x && mouseX <= Shapes.get(11).x + Shapes.get(11).w && mouseY >= Shapes.get(11).y && mouseY <= Shapes.get(7).y+Shapes.get(11).h){
  Shapes.get(7).c = 70;
}else  Shapes.get(7).c = 30;
// Shapes.get(4).draw();
};
