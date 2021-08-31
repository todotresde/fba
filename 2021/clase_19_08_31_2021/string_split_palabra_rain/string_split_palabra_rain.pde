PImage photo;
String[] lines;
String[] miPalabras = {};
int[] miPalabrasPosX = {};
int[] miPalabrasPosY = {};
int[] miPalabrasTam = {};

void setup(){
  size(400,400);
  
  lines = loadStrings("texto.txt");
  
  for (int i = 0 ; i < lines.length; i++) {
    
    String [] palabras = split(lines[i], " ");
    
    for (int p = 0 ; p < palabras.length; p++) {
      miPalabras = append(miPalabras, palabras[p]);
      miPalabrasPosX = append(miPalabrasPosX, round(random(-100, width + 100)));
      miPalabrasPosY = append(miPalabrasPosY, round(random(-10000, -100)));
    }
  }
}

void draw(){
  background(200);
  fill(0);
  textSize(20);
  
  for (int p = 0 ; p < miPalabras.length; p++) {
    text(miPalabras[p], miPalabrasPosX[p], miPalabrasPosY[p]);
    miPalabrasPosY[p] = miPalabrasPosY[p] + 10;
  }
}
