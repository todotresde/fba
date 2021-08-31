PImage photo;
String[] lines;
String[] miPalabras = {};

void setup(){
  size(400,400);
  
  lines = loadStrings("texto.txt");
  
  for (int i = 0 ; i < lines.length; i++) {
    
    String [] palabras = split(lines[i], " ");
    
    for (int p = 0 ; p < palabras.length; p++) {
      miPalabras = append(miPalabras, palabras[p]);
    }
  }
  
  for (int p = 0 ; p < miPalabras.length; p++) {
    println(miPalabras[p]);
  }
}

void draw(){
  
}
