class Textos{
  String textosPantallas [];
  String textosPantallaBotones [][];
  
  Textos(){
    textosPantallas = new String [3];
    textosPantallaBotones = new String [3][2];
    
    inicializarTextosPantallas();
    inicializarTextosBotones();
  }
  
  void inicializarTextosPantallas(){
    textosPantallas[0] = "Pantalla 1";
    textosPantallas[1] = "Pantalla 2";
    textosPantallas[2] = "Pantalla 3";
  }
  
  void inicializarTextosBotones(){
    textosPantallaBotones[0][0] = "P1 B1";
    textosPantallaBotones[0][1] = "P1 B2";
    textosPantallaBotones[1][0] = "P2 B1";
    textosPantallaBotones[1][1] = "P2 B2";
    textosPantallaBotones[2][0] = "P3 B1";
    textosPantallaBotones[2][1] = "P3 B2";
  }
  
  String getTextoParaPantalla(int pantalla){
    return textosPantallas[pantalla];
  }
  
  String getTextoParaPantallaBoton(int pantalla, int boton){
    return textosPantallaBotones[pantalla][boton];
  }
}
