PImage [] imagenes_1 = new PImage [3];
PImage [] imagenes_2 = new PImage [3];
int alto = 50;
int imagenActual_1 = 0;
int imagenActual_2 = 0;

void setup(){
  size(400, 400);
  for (int i = 0 ; i < 3; i++) {
    int index = i + 1;
    imagenes_1[i] = loadImage("img" + index +".jpg");
    imagenes_2[i] = loadImage("img" + index +".jpg");
  }
  textSize(30);
}

void draw(){
  background(200);
  image(imagenes_1[imagenActual_1], 0, 0, width/2, height);
  image(imagenes_2[imagenActual_2], width/2, 0, width/2, height);
  tiempoDeImagen();
}

void tiempoDeImagen(){
  if(frameCount % 120 == 0){
    incrementarImagen_1();
  }
  
  if(frameCount % 20 == 0){
    incrementarImagen_2();
  }
} 

void incrementarImagen_1(){
  if(imagenActual_1 == 2){
    imagenActual_1 = 0;
  } else{
    imagenActual_1++;
  }
}

void incrementarImagen_2(){
  if(imagenActual_2 == 2){
    imagenActual_2 = 0;
  } else{
    imagenActual_2++;
  }
}
