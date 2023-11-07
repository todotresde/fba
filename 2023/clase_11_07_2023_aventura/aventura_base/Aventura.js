class Aventura{
  constructor(){
    this.pantallas = [];
    
    this.pantallas[0] = new PantallaDeUnBoton(img1Fondo, texto1);
    this.pantallas[1] = new PantallaDeUnBoton(img2Fondo, texto2);
    this.pantallas[2] = new PantallaDosBotones(img3Fondo, texto3, 1, 3);
    .....
    
    this.pantallaActual = 0;
  }
  
  dibujar(){
    this.pantallas[this.pantallaActual].dibujar()
  }
  
  click(){
    this.pantallas[this.pantallaActual].click()
  }

}
