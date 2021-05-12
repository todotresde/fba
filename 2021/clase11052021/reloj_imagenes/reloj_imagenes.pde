int framesPorSegundo;
int segundos;
int minutos;
int horas;
PImage cero, uno, dos, tres, cuatro;

void setup(){
  size(400,400);
  textSize(80);
  
  framesPorSegundo = 0;
  segundos = 55;
  minutos = 0;
  horas = 0;
  
  cero = loadImage("0.png");
  uno = loadImage("1.png");
  dos = loadImage("2.png");
  tres = loadImage("3.png");
  cuatro = loadImage("4.png");
}

void draw(){
  
  background(200);
  fill(0);
  // ************************  Reloj con texto ***************
  text(horas + ":" + minutos + ":" + segundos, 50, 100);
  
  // ************************  Reloj con imágenes ***************
  
  // Segundos
  if(segundos == 0){
    image(cero, 250, 200, 100, 100);
  }
  if(segundos == 1){
    image(uno, 250, 200, 100, 100);
  }
  if(segundos == 2){
    image(dos, 250, 200, 100, 100);
  }
  if(segundos == 3){
    image(tres, 250, 200, 100, 100);
  }
  if(segundos == 4){
    image(cuatro, 250, 200, 100, 100);
  }

  
  // Minutos
  if(minutos == 0){
    image(cero, 150, 200, 100, 100);
  }
  if(minutos == 1){
    image(uno, 150, 200, 100, 100);
  }
  if(minutos == 2){
    image(dos, 150, 200, 100, 100);
  }
  if(minutos == 3){
    image(tres, 150, 200, 100, 100);
  }
  if(minutos == 4){
    image(cuatro, 150, 200, 100, 100);
  }
  
  
  // ************************  Lógica del reloj ***************
  
  // 1 segundo = 60 fps
  // 1 minuto = 60 segundos
  // 1 hora = 60 minutos
  // 1 día = 24 horas
  framesPorSegundo = framesPorSegundo + 1;
  
  // 1 segundo = 60 fps
  if(framesPorSegundo == 60){
    segundos = segundos + 1;
    framesPorSegundo = 0;
  }
  
  // 1 minuto = 60 segundos
  if(segundos == 60){
    minutos = minutos + 1;
    segundos = 0;
  }
  
  // 1 hora = 60 minutos
  if(minutos == 60){
    horas = horas + 1;
    minutos = 0;
  }
  
  // 1 día = 24 horas
  if(horas == 24){
    horas = 0;
  }
  
  
}

void mouseClicked(){
  framesPorSegundo = 0;
  segundos = 0;
  minutos = 0;
  horas = 0;
}
