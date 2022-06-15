void clickCeldas(int posY){
  for(int i = 0; i < cant; i++){
    clickCelda(i*tam, posY);
  }
}

boolean clickCelda(int posX, int posY){
  return (mouseX > posX && mouseX < posX + tam && mouseY > posY && mouseY < posY + tam);
}
