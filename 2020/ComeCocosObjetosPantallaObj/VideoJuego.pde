class VideoJuego{
  int cantidadEnemigos = 10;
  int posX, posY, tamX, tamY; 
  int tam;
  
  Jugador jugador;
  Enemigo [] enemigos = new Enemigo [cantidadEnemigos];
  Contador contador;
  Techo techo;
  
  VideoJuego(int p_posX, int p_posY, int p_tamX, int p_tamY){
    posX = p_posX;
    posY = p_posY;
    tamX = p_tamX;
    tamY = p_tamY;
    
    tam = tamX/cantidadEnemigos;
     
    inicializar();
  }
  
  void dibujar(){
    dibujoVideoJuego();
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
  
  void dibujoVideoJuego(){
    noFill();
    rect(posX, posY, tamX, tamY);
    
    dibujarEnemigos();
    jugador.dibujar();
    techo.dibujar();
    contador.dibujar();
    controlarGanarOPerder();
  }
  
  int controlarGanarOPerder(){
    if(contador.haGanado()){
      return 1; //Ganar
    }else if(techo.haPerdido()){
      return 2; // Perder
    }
    return 0; //No pasó nada
  }
  
  void inicializar(){
    jugador = new Jugador(tam, tam * (cantidadEnemigos/2), posY + tamY);
    for(int i=0; i < cantidadEnemigos ; i++ ){
      int tipoEnemigo = floor(random(0,3));
      enemigos[i] = new Enemigo(posX + i*tam + tam/2, generarPosicionEnemigo(), tam/2, tipoEnemigo);
    }
    contador = new Contador(50, 50);
    techo = new Techo(tam);
  }
}
