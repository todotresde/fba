int posYFig1 = round(random(500,600));
int velocidadFig1 = round(random(1,3)); //3,5 => 3, 4,7 => 5

int posYFig2 = round(random(500,600));
int velocidadFig2 = round(random(1,3)); 

int contador = 0;

void setup(){
  size(400,400);
  rectMode(CENTER);
  textSize(20);
}

void draw(){
  background(200);
  
  //Figura 1
  rect(50, 50, 60, 60);
  rect(50,posYFig1,50,50);
  posYFig1 = posYFig1 - velocidadFig1;
  
  if(posYFig1 < -50){
    posYFig1 = round(random(500,600));
  }
  
  //Figura 2
  rect(150, 50, 60, 60);
  rect(150,posYFig2,50,50);
  posYFig2 = posYFig2 - velocidadFig2;
  
  if(posYFig2 < -50){
    posYFig2 = round(random(500,600));
  }
  
  text("Contador: " + contador, 200, 100);
}

void keyPressed(){
  if(keyCode == LEFT){
    if(dist(50, 50, 50,posYFig1) < 10){
      contador = contador + 1;
    }else{
      contador = contador - 1;
    }
  }
  
  if(keyCode == UP){
    if(dist(50, 50, 50,posYFig2) < 10){
      contador = contador + 1;
    }else{
      contador = contador - 1;
    }
  }
}
