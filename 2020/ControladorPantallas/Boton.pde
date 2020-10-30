class Boton{
  int posX, posY, ancho, alto, pantallaAIr;
  String texto;
  
  Boton(String texto, int posX, int posY, int pantallaAIr){
    this.texto = texto;
    this.posX = posX;
    this.posY = posY;
    this.pantallaAIr = pantallaAIr;
    ancho = 50;
    alto = 50;
  }
  
  void dibujar(){
    fill(0);
    text(texto, posX + 5, posY + (alto/2));
    fill(255,0,0);
    rect(posX, posY, ancho, alto);
  }
  
  int mouseClicked(){
    if(mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto ){
      return pantallaAIr;
    }
    return -1;
  }
  
}
