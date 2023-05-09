int posY = 100;
String texto = "Creditos \n" + 
"Nombre 1\n" +
"Nombre 2\n" + 
"Nombre 3\n" + 
"Nombre 4\n" +
"Nombre 5\n" + 
"Nombre 6\n" + 
"Nombre 7\n";

void setup(){
  size(400, 400);
  textSize(30);
}

void draw(){
  background(200);
  fill(0);
  text(texto, 100, posY, 200, 400);
  posY--;
  
  if(posY <= -400){
    posY = height + 50;
  }
 
}
