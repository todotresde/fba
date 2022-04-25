void setup(){
  size(200, 200);
}

void draw(){
  dibujarPersona();
}

void dibujarPersona() {
  float posX = random(25,175);
  float posY = random(25,175);
  
  ellipse(posX, posY, 30, 30);//Cabeza
  line(posX, posY, posX, 150);//Cuerpo
  line(posX, posY + 50, posX + 20, posY + 70);//Pierna Izq
  line(posX, posY + 50, posX - 20, posY + 70);//Pierna Der
  line(posX, posY + 30, posX + 20, posY + 50);//Mano Izq
  line(posX, posY + 30, posX - 20, posY + 50);//Mano Der
}
