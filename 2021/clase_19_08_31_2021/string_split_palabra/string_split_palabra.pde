PImage photo;
String[] lines;

void setup(){
  size(400,400);
  
  lines = loadStrings("texto.txt");
  
  for (int i = 0 ; i < lines.length; i++) {
    
    String [] palabras = split(lines[i], " ");
    
    for (int p = 0 ; p < palabras.length; p++) {
      println(palabras[p]);
    }
  }
}

void draw(){
  
}
