int contador = 1000000;

void setup() {
  size(400, 400);
}

void draw() {
  if(contador > 0){
    dibujarStickman(
      round(random(400)),
      round(random(400))
    );
    contador--;
  }
}
