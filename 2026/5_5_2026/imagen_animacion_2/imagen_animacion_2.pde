PImage goku;
int posX = -300;
int posY = 0;
int demoraGoku = 0;

void setup() {
  size(400, 400);
  goku = loadImage("goku.jpg");
}

void draw() {
  background(255);

  image(goku, posX, posY);
  if(posX < 200){//Derecha
    posX++;
  }else{
    demoraGoku++;
    if(demoraGoku > 1000){//Esperar 
      posY++;//Abajo
    }
  }
  
  
}
