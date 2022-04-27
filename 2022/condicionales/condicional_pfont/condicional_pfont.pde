PFont font;

void setup(){
  size(400,400);
  font = loadFont("BookAntiqua-80.vlw");
}

void draw(){
  background(200);
  textSize(40);
  fill(0);
  textFont(font);
  text("hola mundo", 100, 200);
}
