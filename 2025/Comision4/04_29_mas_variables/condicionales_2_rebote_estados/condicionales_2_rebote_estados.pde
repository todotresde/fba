int posX = 50;
int posY = 100;
PFont miTexto, miTexto2;
float tamFont = 1;
int estado = 1;

void setup(){
  size(400, 400);
  
  miTexto = loadFont("SitkaBanner-BoldItalic-48.vlw");
  miTexto2 = loadFont("Verdana-Bold-48.vlw");
}

void draw(){
  background(200);
  fill(0);
  
  textFont(miTexto);
  textSize(tamFont);
  text("Hola Mundo Hola Mundo Hola Mundo Hola Mundo Hola Mundo Hola Mundo", posX, posY, 350, 300);
  
  if(tamFont < 30){
    tamFont = tamFont + 0.1;
  }
  
  if(estado == 1){
    posX++;
    
    if(posX > 200){
      estado = 2;
    }
  }else if(estado == 2){
    posY++;
  }
  
}
