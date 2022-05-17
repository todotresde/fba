boolean dibujarBoton(int posX, int posY) {
  int diametro = 100;
  int radio = diametro / 2;
  
  noStroke();
  ellipse(posX, posY, diametro, diametro);
  if(dist(posX, posY, mouseX, mouseY) < radio){
    fill(200,0,0);
    return true;
  }else{
    fill(255);
  }
  return false;
}
