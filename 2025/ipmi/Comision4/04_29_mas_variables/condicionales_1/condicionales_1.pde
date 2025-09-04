int posX = 0;
PFont miTexto, miTexto2;
float tamFont = 1;

void setup(){
  size(400, 400);
  
  miTexto = loadFont("SitkaBanner-BoldItalic-48.vlw");
  miTexto2 = loadFont("Verdana-Bold-48.vlw");
}

void draw(){
  background(200);
  fill(0);
  
  if(mouseX > width/2){
    textFont(miTexto);
    textSize(tamFont);
    text("Hola Mundo Hola Mundo Hola Mundo Hola Mundo Hola Mundo Hola Mundo", 50, 100, 350, 300);
    tamFont = tamFont + 0.1;
  }else{
    textFont(miTexto2);  
    textSize(30);
    text("Adios Mundo", 100, 300);
    tamFont = 0;
  }
  
}
