int tam = 100;
int radio = tam/2;
color colorZona0, colorZona1, colorZona2 = color(200);
boolean presionado0, presionado1, presionado2 = false;
int cant = 3;

void setup(){
  size(400, 400);
}

void draw(){
  background(200);
  
  for(int i=0; i < cant; i++){
    noStroke();
  
    if(i == 0){
      fill(colorZona0);
    }else if(i == 1){
      fill(colorZona1);
    }else if(i == 2){
      fill(colorZona2);
    }
    ellipse(i * tam, height/2, tam, tam);
      
    
    if(i == 0 ){
      if(dist(mouseX, mouseY, i * tam, height/2) < radio){
        colorZona0 = color(255,0,0,50);
      }else{
        colorZona0 = color(200);
      }
    }else if(i == 1 ){
      if(dist(mouseX, mouseY, i * tam, height/2) < radio){
        colorZona1 = color(255,0,0,50);
      }else{
        colorZona1 = color(200);
      }
    }else if(i == 2 ){
      if(dist(mouseX, mouseY, i * tam, height/2) < radio){
        colorZona2 = color(255,0,0,50);
      }else{
        colorZona2 = color(200);
      }
    }
    //stroke(0);
    //line(mouseX, mouseY, i * tam, height/2);
  }
  
  
}


void mouseClicked(){
  for(int i=0; i < cant; i++){
    if(i == 0){
      if(dist(mouseX, mouseY, width/2, height/2) < radio){
        colorZona0 = color(255,0,0);
      }
    }else if(i == 1){
      if(dist(mouseX, mouseY, width/2, height/2) < radio){
        colorZona1 = color(255,0,0);
      }
    }else if(i == 2){
      if(dist(mouseX, mouseY, width/2, height/2) < radio){
        colorZona2 = color(255,0,0);
      }
    }
  }
}
