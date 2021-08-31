PImage photo;
String[] lines;

void setup(){
  size(400,400);
  
  lines = loadStrings("texto.txt");
  
}

void draw(){
  for (int i = 0 ; i < lines.length; i++) {
    println(lines[i]);
  }
}
