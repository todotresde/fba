PImage portada ;
int cant = 12;
PImage [] fondosDePantallas = new PImage [cant];

void setup () {
  size(600, 600);
  for (int i=0; i<cant; i++) {
    fondosDePantallas[i] = loadImage("portada" + i + ".jpg");
  }
}


void draw () {
  pantalla(0);
}

void pantalla(int pantalla){
  image(fondosDePantallas[pantalla], 0, 0, 600, 600);
}
