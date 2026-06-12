// Ejemplo 7 - rotate simple (SIN for)
// rotate() gira el sistema de coordenadas alrededor del origen (0,0).
// Por eso PRIMERO trasladamos el origen a donde queremos el centro de giro,
// y RECIEN AHI rotamos. rotate() usa RADIANES: usamos radians() para
// pasar de grados a radianes.
int angulo = 0;

void setup() {
  size(400, 400);
  background(255);
  rectMode(CENTER);
}

void draw(){
  background(200);
  
  // 1) Movemos el origen al centro
  translate(200, 200);

  // 2) Giramos el sistema 45 grados
  rotate(radians(angulo));

  // 3) Dibujamos en el origen: el cuadrado sale "en diamante"
  fill(200, 100, 100);
  rect(0, 0, 120, 120);
  angulo++;
}
