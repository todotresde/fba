void controlDeAnimacion(){
  if(millis() > 10000 && millis() < 10100){
    println(millis());
    background(200);
    inicializarVariablesO();
    animacionActual = 2;
  }
}
