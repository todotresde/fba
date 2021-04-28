PFont miTipografia, miTipografia2;

void setup(){
  size(400, 400);
  miTipografia = loadFont("PerpetuaTitlingMT-Light-48.vlw");
  miTipografia2 = loadFont("OldEnglishTextMT-20.vlw");
  

}

void draw(){
  background(200);
  textFont(miTipografia, 48);
  textSize(20);
  fill(0);
  text("Hola Mundo!", 100, 100);
  
  textFont(miTipografia2, 10);
  textSize(30);
  fill(155,0,0);
  text("Adios Mundo!", 100, 200);
}
