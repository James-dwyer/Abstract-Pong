void winScreen(){
  background(225);
for(int i = 5; i < Shapes.size()-1;i++){
  Shapes.get(i).draw();
};

if(mouseX >= Shapes.get(6).x && mouseX <= Shapes.get(6).x + Shapes.get(6).w && mouseY >= Shapes.get(6).y && mouseY <= Shapes.get(6).y+Shapes.get(6).h){
  Shapes.get(6).c = 70;
}else  Shapes.get(6).c = 30;
if(mouseX >= Shapes.get(7).x && mouseX <= Shapes.get(7).x + Shapes.get(7).w && mouseY >= Shapes.get(7).y && mouseY <= Shapes.get(7).y+Shapes.get(7).h){
  Shapes.get(7).c = 70;
}else  Shapes.get(7).c = 30;
// Shapes.get(4).draw();
};
