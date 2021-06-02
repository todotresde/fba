int posYFig1 = round(random(500,600));
int velocidadFig1 = round(random(1,5)); //3,5 => 3, 4,7 => 5
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
  posYFig1 = posYFig1 - velocidadFig1;
  
  line(50, 50, 50,posYFig1);
  
  text("Contador: " + contador, 200, 100);
  text("Dist: " + dist(50, 50, 50,posYFig1), 200, 50);
  
  if(posYFig1 < -50){
    posYFig1 = round(random(500,600));
  }
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
