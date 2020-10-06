class Techo{
  int contador, offset;
  
  Techo(int p_offset){
    contador = 0;
    offset = p_offset;
  }
  
  void dibujar(){
    fill(0);
    rect(0,0,width, contador * offset);
  }
  
  void bajarTecho(){
    contador++;
  }
}
