class Juego{
  int cantidadEnemigos = 10;
  int tam = width/cantidadEnemigos;
  
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
  }
  
  void dibujar(){
    dibujarEnemigos();
    jugador.dibujar();
    techo.dibujar();
    contador.dibujar();
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
    jugador.teclaPresionada();
  }
  
  int generarPosicionEnemigo(){
    return round(random(-1000, tam));
  }
}
