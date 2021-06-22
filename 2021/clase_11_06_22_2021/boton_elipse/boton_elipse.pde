int tam = 100;
int radio = tam/2;
color colorZona = color(200);
boolean presionado = false;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  noStroke();
  
  fill(colorZona);
  ellipse(width/2, height/2, tam, tam);
  
  if(presionado == false){
    if(dist(mouseX, mouseY, width/2, height/2) < radio){
      colorZona = color(255,0,0,50);
    }else{
      colorZona = color(200);
    }
  }
  
  line(mouseX, mouseY, width/2, height/2);
}

void mouseClicked(){
  if(dist(mouseX, mouseY, width/2, height/2) < radio){
    colorZona = color(255,0,0);
    presionado = true;
  }
}
