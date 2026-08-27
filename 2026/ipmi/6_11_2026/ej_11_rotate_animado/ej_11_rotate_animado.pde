// Ejemplo 11 - rotate animado (SIN for): cuadrado que gira
// Lo nuevo: usamos draw() (se ejecuta ~60 veces por segundo) y una
// variable 'angulo' que crece un poco en cada frame.
// background() al inicio de draw() "borra" el frame anterior.

float angulo = 0; // variable global: conserva su valor entre frames

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(255);          // limpiamos la pantalla cada frame

  translate(200, 200);      // origen al centro
  rotate(angulo);           // giramos segun el valor actual

  fill(50, 120, 200);
  rect(0, 0, 120, 120);

  angulo = angulo + 0.02;   // aumentamos el angulo -> el proximo frame gira un poco mas
}
