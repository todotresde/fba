int posXPersona1, posXPersona2, posXPersona3, posXPersona4, posXPersona5;

void setup() {
  size(400, 400);
  
  posXPersona1 = round(random(10,width-10));
  posXPersona2 = round(random(10,width-10));
  posXPersona3 = round(random(10,width-10));
  posXPersona4 = round(random(10,width-10));
  posXPersona5 = round(random(10,width-10));
}

void draw(){
  background(200);
  dibujarPersona(posXPersona1);
  dibujarPersona(posXPersona2);
  dibujarPersona(posXPersona3);
  dibujarPersona(posXPersona4);
  dibujarPersona(posXPersona5);
}
