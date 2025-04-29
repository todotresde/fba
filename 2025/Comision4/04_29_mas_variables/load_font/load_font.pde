int posX = 0;
PFont miTexto, miTexto2;

void setup(){
  size(400, 400);
  textSize(30);
  miTexto = loadFont("SitkaBanner-BoldItalic-48.vlw");
  miTexto2 = loadFont("Verdana-Bold-48.vlw");
}

void draw(){
  background(200);
  fill(0);
  textFont(miTexto);
  text("Hola Mundo", 100, 100);
  
  textFont(miTexto2);
  text("Adios Mundo", 100, 300);
}
