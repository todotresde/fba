char numeroAAdivinarInicio;
char numeroAAdivinarFin;
char numeroElegido;
char numeroPresionado;
boolean haSidoPresionado;
String mensaje;

void setup(){
  size(400, 400);
  iniciarJuego(3, 5);
}

void draw(){
  background(200);  
  dibujarPantallaPrincipal();
}

void keyPressed(){
  teclaPresionada();
}
