void setup(){
   size(400,400);
   rectMode(CENTER);
}

void draw(){
  //Declarar una variable dentro del FOR del tipo int
  //Agregar un criterio de ejecución del bucle
  //La forma en la cual se incrementa la variable a usar como contador
  for(int i=0; i<10; i++){
    rect(i * 5,height/2, 50, 50);
    // i=0 => 0, 200
    // i=1 => 5, 200
    // i=2 => 10, 200
    //...
    // i=9 => 45, 200
  }
  /*
  rect(25,height/2, 50, 50);
  rect(75,height/2, 50, 50);
  rect(125,height/2, 50, 50);
  rect(175,height/2, 50, 50);
  rect(225,height/2, 50, 50);
  */
}
