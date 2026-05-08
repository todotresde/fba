PFont texto;
int posX = -300;
int posY = 200;
int demoraTexto = 0;

void setup() {
  size(400, 400);
  texto = loadFont("MaturaMTScriptCapitals-48.vlw");
  textSize(40);
}

void draw() {
  background(255);
  textFont(texto);
  fill(0);
  text("Hola Mundo!!", posX, posY, 200, 100);
  if(posX < 200){//Derecha
    posX++;
  }else{
    demoraTexto++;
    if(demoraTexto > 1000){//Esperar 
      posY++;//Abajo
    }
  }
  
  
}
