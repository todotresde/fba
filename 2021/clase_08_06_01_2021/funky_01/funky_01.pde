int posYFig1 = 500;
int contador = 0;

void setup(){
  size(400,400);
  rectMode(CENTER);
  textSize(20);
}

void draw(){
  background(200);
  
  rect(50, 50, 60, 60);
  
  rect(50,posYFig1,50,50);
  posYFig1 = posYFig1 - 1;
  
  line(50, 50, 50,posYFig1);
  
  text("Contador: " + contador, 200, 100);
  text("Dist: " + dist(50, 50, 50,posYFig1), 200, 50);
}

void keyPressed(){
  if(keyCode == LEFT){
    if(dist(50, 50, 50,posYFig1) < 10){
      contador = contador + 1;
    }else{
      contador = contador - 1;
    }
  }
}
