void pause(){
Shapes.get(3).w = width*2/5;
Shapes.get(3).h = height/4;
Shapes.get(3).x = width/2-(Shapes.get(3).w)/2;
Shapes.get(3).y = height/3;

resume.x = width/3;
resume.y = height/3+Shapes.get(3).h/6;
resume.w = width/12;
resume.h = height/9;

restart.x = width/2 - resume.w/2;
restart.y = height/3+Shapes.get(3).h/6;
restart.w = width/12;
restart.h = height/9;

exit.x = width/2 + resume.w;
exit.y = height/3+Shapes.get(3).h/6;
exit.w = width/12;
exit.h = height/9;


if(mouseX >= resume.x && mouseX <= resume.x+resume.w && mouseY >= resume.y && mouseY <= resume.y+resume.h){
resume.c = 80;}else resume.c = 210;
if(mouseX >= restart.x && mouseX <= restart.x+restart.w && mouseY >= restart.y && mouseY <= restart.y+restart.h){
restart.c = 80;}else restart.c = 210;
if(mouseX >= exit.x && mouseX <= exit.x+exit.w && mouseY >= exit.y && mouseY <= exit.y+exit.h){
exit.c = 80;}else exit.c = 210;

Shapes.get(3).draw();

};
