void pause(){
Shapes.get(pauseIndex).w = width*2/5;
Shapes.get(pauseIndex).h = height/4;
Shapes.get(pauseIndex).x = width/2-(Shapes.get(pauseIndex).w)/2;
Shapes.get(pauseIndex).y = height/3;

resume.x = width/3;
resume.y = height/3+Shapes.get(pauseIndex).h/3;
resume.w = width/12;
resume.h = height/9;

restart.x = width/2 - resume.w/2;
restart.y = height/3+Shapes.get(pauseIndex).h/3;
restart.w = width/12;
restart.h = height/9;

exit.x = width/2 + resume.w;
exit.y = height/3+Shapes.get(pauseIndex).h/3;
exit.w = width/12;
exit.h = height/9;


if(mouseX >= resume.x && mouseX <= resume.x+resume.w && mouseY >= resume.y && mouseY <= resume.y+resume.h){
resume.c = 80;}else resume.c = 210;
if(mouseX >= restart.x && mouseX <= restart.x+restart.w && mouseY >= restart.y && mouseY <= restart.y+restart.h){
restart.c = 80;}else restart.c = 210;
if(mouseX >= exit.x && mouseX <= exit.x+exit.w && mouseY >= exit.y && mouseY <= exit.y+exit.h){
exit.c = 80;}else exit.c = 210;

Shapes.get(pauseIndex).draw();

};
