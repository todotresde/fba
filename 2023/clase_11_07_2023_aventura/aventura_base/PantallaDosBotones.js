class PantallaDosBotones(){
  constructor(imgFondo, texto){
    this.imgFondo = imgFondo;
    this.texto = texto;
    this.boton1 = new Boton();
    this.boton2 = new Boton();
  }
  
  dibujar(){
    image(this.imgFondo)
    text(this.text);
    this.boton1.dibujar()
    this.boton2.dibujar()
  }
  
  click(){
    this.boton1.click()
    this.boton2.click()
  }
}
