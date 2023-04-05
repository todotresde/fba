PFont misLetras;

void setup(){
  size(800,400);
  
  misLetras = loadFont("DejaVuSerif-Bold-48.vlw");
  
}

void draw(){
  textFont(misLetras, 40);
  textSize(40);
  fill(163,87,232);
  text("Hola Mundo. Esta es \nmi primer aplicación", 100, 200);
}
