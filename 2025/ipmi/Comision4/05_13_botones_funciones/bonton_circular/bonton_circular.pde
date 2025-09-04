color miColorDeFondo = color(200);

void setup(){
  size(400, 400);
}

void draw(){
  background(miColorDeFondo);
  ellipse(200,200,50,50);
}

void mouseClicked(){
  if(dist(200,200,mouseX, mouseY)<50/2){
    miColorDeFondo = color(255,0,0);
  }
}
