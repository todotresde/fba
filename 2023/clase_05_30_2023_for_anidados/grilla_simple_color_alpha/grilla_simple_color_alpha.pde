int cant = 100;
int tamX, tamY;
PImage fondo;

void setup(){
  size(800, 600);
  tamX = width/cant;
  tamY = height/cant;
  noStroke();
  fondo = loadImage("img.jpg");
}

void draw(){
  background(200);
  image(fondo,0,0,width,height);
  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      float distancia = dist(i*tamX, j*tamY, mouseX, mouseY);
      float miColor = map(distancia, 0, 100, 255, 0);
      float colorAlpha = map(distancia, 0, 100, 0, 100);
      fill(miColor, 0, 0, colorAlpha);
      rect(i*tamX, j*tamY, tamX, tamY);
      //line(i*tamX, j*tamY, mouseX, mouseY);
    }
  }
}
