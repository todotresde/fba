void setup(){
  size(400, 400);
  textSize(30);
}

void draw(){
  background(200);
  String [] lineas = loadStrings("nombres.txt");
  
  println("Hay  " + lineas.length + " lineas");
  
  for (int i = 0 ; i < lineas.length; i++) {
    text(lineas[i], 100, 100 + i * 50);
  }
}
