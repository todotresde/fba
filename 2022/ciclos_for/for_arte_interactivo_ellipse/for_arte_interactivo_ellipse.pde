int cant = 10;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  for(int i=0; i<cant;i++){
    int tam = width - (i * 40);
    if(i%2 == 0){
      fill(0);
    }else{
      fill(255);
    }
    //i=0 => posX = 0
    //i=1 => posX = mouseX => (-10,10) => mouseX = 200 => posX = 0
    int posX = i * round(map(mouseX, 0, width, -10, 10));
    int posY = i * round(map(mouseY, 0, height, -10, 10));
    ellipse(width/2 + posX, height/2 + posY, tam, tam);
  }
}
