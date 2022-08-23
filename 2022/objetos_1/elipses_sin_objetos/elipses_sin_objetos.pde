int cant = 50;
int posX[] = new int [cant];
int posY[] = new int [cant];
int tam[] = new int [cant];
color colores[] = new color [cant];
int dir[] = new int [cant];

void setup(){
  size(400,400);
  for(int i = 0; i<cant;i++){
    posX[i] = round(random(50, width-50));
    posY[i] = round(random(50, height-50));
    tam[i] = round(random(5, 20));
    colores[i] = color(random(0,255),random(0,255),random(0,255));
    dir[i] = floor(random(0,4));
  }
}

void draw(){
  background(200);
  for(int i = 0; i<cant;i++){
    dibujarObjeto(i);
    moverObjeto(i);
  }
}
