class Juego{
  int cantidadEnemigos = 10;
  int tam = width/cantidadEnemigos;
  int status;
  
  Jugador jugador;
  Enemigo [] enemigos = new Enemigo [cantidadEnemigos];
  Contador contador;
  Techo techo;
  
  Juego(){
    jugador = new Jugador(tam, tam * (cantidadEnemigos/2));
    for(int i=0; i < cantidadEnemigos ; i++ ){
      enemigos[i] = new Enemigo(i*tam + tam/2, generarPosicionEnemigo(), tam/2);
    }
    contador = new Contador(50, 50);
    techo = new Techo(tam);
    status = 0;
  }
  
  void dibujar(){
    if(status == 0){
      dibujoPantallaInicio();
    }else if(status == 1){
      dibujoVideoJuego();
    }else if(status == 2){
      dibujoFin("Ganaste!");
    }else if(status == 3){
      dibujoFin("Perdiste!");
    }
    
  }
  
  void dibujarEnemigos(){
    for(int i=0; i < cantidadEnemigos ; i++ ){
      enemigos[i].dibujar();
      
      if(jugador.chocaCon(enemigos[i])){
        enemigos[i].moverEnY(generarPosicionEnemigo());
        contador.incrementar();
      }
      
      if(enemigos[i].saleDeLaPantalla()){
        enemigos[i].moverEnY(generarPosicionEnemigo());
        techo.bajarTecho();
      }
    }
  }
  
  void teclaPresionada(){
    if(status == 0){
      status = 1;
    }else if(status == 1){
      jugador.teclaPresionada();
    }else if(status == 2){
      
    }else if(status == 3){
      
    }
    
  }
  
  int generarPosicionEnemigo(){
    return round(random(-1000, tam));
  }
  
  void dibujoPantallaInicio(){
    textAlign(CENTER);
    textSize(20);
    fill(0);
    text("Presiona una Tecla para iniciar", width/2, height/2);
  }
  
  void dibujoVideoJuego(){
    dibujarEnemigos();
    jugador.dibujar();
    techo.dibujar();
    contador.dibujar();
    controlarGanarOPerder();
  }
  
  void dibujoFin(String mensaje){
    textAlign(CENTER);
    textSize(15);
    fill(0);
    text(mensaje, width/2, height/2);
    text("Presiona una Tecla para reiniciar", width/2, height/2 + 100);
  }
  
  void controlarGanarOPerder(){
    if(contador.haGanado()){
      status = 2;
    }else if(techo.haPerdido()){
      status = 3;
    }
  }
}
