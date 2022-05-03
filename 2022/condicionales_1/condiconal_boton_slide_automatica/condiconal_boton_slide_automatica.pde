PImage imagen;
int numImagen = 1;
int totalImagenes = 3;
int segundos = 0;
boolean siguienteImg = false;

void setup(){
  size(400,400);
  imagen = loadImage("img0" + numImagen + ".jpg");
}

void draw(){
  background(200);
  image(imagen, 0, 0, width, height);
  fill(0);
  textSize(40);
  text(frameCount, 200, 200);
  text(segundos, 200, 300);
  
  if(frameCount%60 == 0){
    segundos++;
  }
  if(segundos%10 == 0){
    imagen = loadImage("img0" + numImagen + ".jpg");
    numImagen++;
    if(numImagen == totalImagenes + 1){
      numImagen = 1;
    }
  }
}
