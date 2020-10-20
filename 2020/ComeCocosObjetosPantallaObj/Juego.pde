class Juego{
  int status;
  VideoJuego videoJuego;
  
  Juego(){
    inicializar();
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
  
  void teclaPresionada(){
    if(status == 0){
      status = 1;
    }else if(status == 1){
      videoJuego.teclaPresionada();
    }else if(status == 2){
      inicializar();
    }else if(status == 3){
      inicializar();
    }
    
  }
  
  void dibujoPantallaInicio(){
    textAlign(CENTER);
    textSize(20);
    fill(0);
    text("Presiona una Tecla para iniciar", width/2, height/2);
  }
  
  void dibujoVideoJuego(){
    videoJuego.dibujar();
    //Controlar Ganar o Perder
    if(videoJuego.controlarGanarOPerder() == 1){
      status = 2;
    }else if(videoJuego.controlarGanarOPerder() == 2){
      status = 3;
    }
  }
  
  void dibujoFin(String mensaje){
    textAlign(CENTER);
    textSize(15);
    fill(0);
    text(mensaje, width/2, height/2);
    text("Presiona una Tecla para reiniciar", width/2, height/2 + 100);
  }
  
  void inicializar(){
    videoJuego = new VideoJuego(100,100,200,200);
    status = 0;
  }
}
