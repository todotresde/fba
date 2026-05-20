void dibujarPantalla(){
  noFill();
  rect(20,20, 360,300);
}

void dibujarLapiz(){
  if(mouseX > 20 && mouseX < 380 && mouseY > 20 && mouseY < 300){
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
