int posX = 200;
int pantalla = 1;

void setup(){
  size(400, 400);
  textSize(20);
}

void draw(){
  if(pantalla == 1){
    background(0, 255, 0);
    fill(255,50,20);
    rect(200,200,50,50);
    fill(0);
    text("Pantalla 1", 100, 50);
  }else if(pantalla == 2){
    background(255, 0, 0);
    fill(0);
    text("Pantalla 2", 200, 50);
  }else if(pantalla == 3){
    background(0, 0, 255);
    fill(0);
    text("Pantalla 3", 100, 200);
  }
  fill(0);
  text(pantalla, mouseX, mouseY);
  
  fill(255);
  rect(350, 350, 50, 50);
}

void mouseClicked(){
  if(mouseX > 350 && mouseY > 350){
    pantalla = pantalla + 1;
    if(pantalla == 4){
      pantalla = 1;
    }
  }
}
