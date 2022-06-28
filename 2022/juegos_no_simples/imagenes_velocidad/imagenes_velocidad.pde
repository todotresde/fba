PImage [] imagenes = new PImage [3];
int alto = 50;
int imagenActual = 0;

void setup(){
  size(400, 400);
  for (int i = 0 ; i < 3; i++) {
    int index = i + 1;
    imagenes[i] = loadImage("img" + index +".jpg");
  }
  textSize(30);
}

void draw(){
  background(200);
  image(imagenes[imagenActual], 0, 0, width, height);
  tiempoDeImagen();
}

void tiempoDeImagen(){
  if(frameCount % 120 == 0){
    incrementarImagen();
  }
} 

void incrementarImagen(){
  if(imagenActual == 2){
    imagenActual = 0;
  } else{
    imagenActual++;
  }
}
