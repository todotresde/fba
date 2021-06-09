int segundos = 0; 
int minutos = 0; 
int horas = 0; 
void setup() {   
  size(240, 240);   
  frameRate(600);
} 
void draw() {   
  background(0);   
  println(frameCount);   
  if (frameCount % 60 == 0) {     
    segundos++;     
    if (segundos >= 60) {       
      minutos++;       
      segundos = 0;       
      if (minutos >= 60) {         
        horas++;              
        if (horas >= 24) {           
          horas = 0;
        }         
        minutos = 0;
      }
    }
  }   
  text(horas + ":" + minutos +":" + segundos, width/2, height/2);
}
