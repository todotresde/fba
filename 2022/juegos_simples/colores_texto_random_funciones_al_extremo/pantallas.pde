
void dibujarPantallaPrincipal() {
  fill(colorTexto);
  text(textoDelColor, 150, 100);

  fill(colorRandom1);
  rect(0, height/2, width/2, height/2);

  fill(colorRandom2);
  rect(width/2, height/2, width/2, height/2);
}

void dibujarPantallaRespuesta() {
  fill(0);
  text(respuesta, 150, 100);
}
