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
  rect(width/2, height/2, tam, tam);
  
  if(presionado == false){
    if(
      mouseX > width/2 && mouseX < width/2 + tam && 
      mouseY > height/2 && mouseY < height/2 + tam
    ){
      colorZona = color(255,0,0,50);
    }else{
      colorZona = color(200);
    }
  }
  
  line(mouseX, mouseY, width/2, height/2);
}

void mouseClicked(){
  if(
      mouseX > width/2 && mouseX < width/2 + tam && 
      mouseY > height/2 && mouseY < height/2 + tam
    ){
    if(presionado == false){
      colorZona = color(255,0,0);
      presionado = true;
    }else{
      presionado = false;
    }
  }
}
