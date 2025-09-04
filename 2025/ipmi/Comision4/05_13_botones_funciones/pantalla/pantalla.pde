color pantalla = 1;

void setup(){
  size(400, 400);
}

void draw(){
  background(miColorDeFondo);
  if(pantalla == 1){
    //P1
  }else if(){
    //P2
  }
  ....
  else if(pantalla == 8){
    //P8
  }
}

void mouseClicked(){
  if(pantalla == 8){
    if(dist(200,200,mouseX, mouseY)<50/2){
      miColorDeFondo = color(255,0,0);
    }
  }
}
