String texto;

void setup() {
  size(400, 400);
  textSize(30);
  texto = "";
}

void draw() {
  background(200);  
  fill(0);
  text(texto, 50, 100);
}

void keyTyped(){
  if(key != BACKSPACE)
    texto += key;
  else
    texto = texto.substring(0, texto.length() - 1);
}
