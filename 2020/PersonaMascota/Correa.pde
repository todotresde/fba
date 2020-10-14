class Correa{
  int posXJugador, posYJugador, posXMascota, posYMascota;
  
  Correa(int p_posXJugador, int p_posYJugador, int p_posXMascota, int p_posYMascota){
    posXJugador = p_posXJugador;
    posYJugador = p_posYJugador;
    posXMascota = p_posXMascota;
    posYMascota = p_posYMascota;
  }
  
  void dibujar(){
    line(posXJugador, posYJugador, posXMascota, posYMascota);
  }
}
