int posX = 0;
PFont miTexto, miTexto2;

void setup(){
  size(400, 400);
  
  miTexto = loadFont("SitkaBanner-BoldItalic-48.vlw");
  miTexto2 = loadFont("Verdana-Bold-48.vlw");
}

void draw(){
  background(200);
  fill(0);
  textFont(miTexto);
  textSize(30);
  text("Hola Mundo Hola Mundo Hola Mundo Hola Mundo Hola Mundo\n Hola Mundo", 100, 100);

  textFont(miTexto2);  
  textSize(30);
  text("Adios Mundo", 100, 300);
}
