class Controlador{
  Pantalla pantallaActual;
  int cantidadPantallas = 3;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  PImage [] fondos = new PImage [cantidadPantallas];
  Textos textos = new Textos();
  
  Controlador(){
    int pantalla;
    Boton boton1, boton2;
    
    cargarFondos();
    
    pantallas = new Pantalla [cantidadPantallas];
    //Creo la pantalla 1
    pantalla = 0;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla,0), 300, 300, 1);
    pantallas[pantalla] = new Pantalla(fondos[pantalla],textos.getTextoParaPantalla(pantalla), boton1, null);
    
    //Creo la pantalla 2
    pantalla = 1;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla,0), 50, 300, 0);
    boton2 = new Boton(textos.getTextoParaPantallaBoton(pantalla,1), 300, 300, 2);
    pantallas[pantalla] = new Pantalla(fondos[pantalla],textos.getTextoParaPantalla(pantalla), boton1, boton2);
    
    //Creo la pantalla 3
    pantalla = 2;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla,0), 50, 300, 1);
    pantallas[pantalla] = new Pantalla(fondos[pantalla],textos.getTextoParaPantalla(pantalla), boton1, null);
    
    //Al terminar de crear las pantallas, indico la actual.
    pantallaActual = pantallas[0];
  }
  
  void dibujar(){
    pantallaActual.dibujar();
  }
  
  void cargarFondos(){
    for(int i=0; i<cantidadPantallas; i++){
      fondos[i] = loadImage("imagen" + i + ".jpg");
    }
  }
  
  void mouseClicked(){
    int pantallaAIr = pantallaActual.mouseClicked();
    if(pantallaAIr != -1){
      pantallaActual = pantallas[pantallaAIr];
    }
  }
}
