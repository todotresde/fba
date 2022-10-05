String[] lines;

void setup(){
  size(800, 500);
  textSize(15);
  fill(0);
  lines = loadStrings("list.txt");
}

void draw(){
  background(200);
  println("Hay " + lines.length + " lines");  
  for (int i = 0 ; i < lines.length; i++) {
    text(lines[i], 0, (i * 15) + 15);
  }
}
