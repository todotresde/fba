//0 vivo
//1 herido
//2 muerto
int [][] aliens;
int filaAliens = 4;
int columnasAliens = 7;
int tamAlien;
int balaPosX;
int balaPosY;
boolean seHaDisparado = false;

void setup(){
  size(400, 400);
  
  tamAlien = width/columnasAliens;
  aliens = new int [filaAliens][columnasAliens];
}

void draw(){
  background(200);
  dibujarAliens();
  dibujarNave();
  dibujarBala();
}

void mousePressed(){
  disparar();
}
