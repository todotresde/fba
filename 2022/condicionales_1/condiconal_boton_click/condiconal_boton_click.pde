void setup(){
  size(400,400);
}

void draw(){
  background(200);
  
  rect(100,100,100,50);
  
  boolean estaDentroDelBoton = 
    mouseX > 100 && mouseX < 200 && 
    mouseY > 100 && mouseY < 150;
    
  if(estaDentroDelBoton){
    fill(255, 0, 0, 50);
  }else{
    fill(255,0,0);
  }
}

void mouseClicked(){
  boolean estaDentroDelBoton = 
    mouseX > 100 && mouseX < 200 && 
    mouseY > 100 && mouseY < 150;
    
  if(estaDentroDelBoton){
    fill(0);
  }
}
