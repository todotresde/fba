int framesPorSegundo;
int segundos;
int minutos;
int horas;

void setup(){
  size(400,400);
  textSize(80);
  
  framesPorSegundo = 0;
  segundos = 45;
  minutos = 59;
  horas = 23;
}

void draw(){
  
  background(200);
  fill(0);
  text(horas + ":" + minutos + ":" + segundos, 50, 200);
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
