char numeroElegido;
char numeroPresionado;
boolean haSidoPresionado;
String mensaje;

void setup(){
  size(400, 400);
  iniciarJuego();
}

void draw(){
  background(200);  
  dibujarPantallaPrincipal();
}

void keyPressed(){
  teclaPresionada();
}
