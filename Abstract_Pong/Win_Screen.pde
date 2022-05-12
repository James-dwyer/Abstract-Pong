void winScreen(){
  println("yo");
  
  //for(int i = 5; i < Shapes.size()-1;i++){
  //Shapes.get(i).draw();
  //};
  for(int i = 0; i < Shapes.size()-4;i++){
  Shapes.remove(i).draw();
  };
  Shapes.get(0).draw();

};
