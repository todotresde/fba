int centroX = 0;
int centroY = 0;
int angulo1 = 0;
int angulo2 = 0;
int cant = 10;
int tam;

void setup(){
  size(400, 400);
  tam = width/cant;
}

void draw(){
  background(200);
  
  for(int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      pushMatrix();
      translate(i*tam + tam/2, j*tam + tam/2);
      rotate(radians(angulo1));
      dibujarMiraEn(0,0);
      dibujarRectEn(0,0);
      popMatrix();
    }
  }
  
  angulo1++;
}

void dibujarMiraEn(int posX, int posY){
  fill(255,0,0);
  ellipse(posX, posY, 10, 10);
  line(posX-10, posY, posX+10, posY);
  line(posX, posY-10, posX, posY+10);
}

void dibujarRectEn(int posX, int posY){
  fill(255,0,0,100);
  rectMode(CENTER);
  rect(posX, posY, tam, tam);
  line(0, 0, posX, posY);
}
