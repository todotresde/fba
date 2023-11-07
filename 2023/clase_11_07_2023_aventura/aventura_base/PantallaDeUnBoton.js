class PantallaDeUnBoton(){
  constructor(imgFondo, texto){
    this.imgFondo = imgFondo;
    this.texto = texto;
    this.boton = new Boton();
  }
  
  dibujar(){
    image(this.imgFondo)
    text(this.text);
    this.boton.dibujar()
  }
  
  click(){
    this.boton.click()
  }
}
