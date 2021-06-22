int tamX = 200;
int tamY = 30;

color colorZona = color(200);
boolean presionado = false;

void setup(){
  size(400, 400);
  textSize(20);
}

void draw(){
  background(200);
  noStroke();
  
  fill(colorZona);
  text("Hola Mundo", width/2, height/2, tamX, tamY);
  
  if(presionado == false){
    if(
      mouseX > width/2 && mouseX < width/2 + tamX && 
      mouseY > height/2 && mouseY < height/2 + tamY
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
      mouseX > width/2 && mouseX < width/2 + tamX && 
      mouseY > height/2 && mouseY < height/2 + tamY
    ){
    if(presionado == false){
      colorZona = color(255,0,0);
      presionado = true;
    }else{
      presionado = false;
    }
  }
}
