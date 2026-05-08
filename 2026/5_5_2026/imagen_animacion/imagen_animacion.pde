PImage imagen;
int posX = -100;
int posY = 100;
int contadorPosX = 0;

void setup() {
  size(400, 400);
  imagen = loadImage("goku.jpg");
}

void draw() {
  background(200);

  image(imagen, posX, posY);
  
  if(posX < 200){  
    posX++;
  }else{
    contadorPosX++;
    if(contadorPosX > 500 ){
      posY--;
    }
  }
}
