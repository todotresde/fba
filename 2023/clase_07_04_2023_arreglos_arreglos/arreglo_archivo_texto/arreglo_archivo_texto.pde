String [] lineas;
int alto = 50;

void setup(){
  size(400, 400);
  lineas = loadStrings("textos.txt");
  textSize(30);
}

void draw(){
  background(200);
  fill(0);
  for (int i = 0 ; i < lineas.length; i++) {
    text(lineas[i], 10, alto * i + alto);
  }
}

void keyPressed(){
  if(key == 'l'){
    lineas = loadStrings("textos.txt");
  }
}
