function precargar() {
  for (let a = 0; a < caminar_cant; a++) {
    let imagen = loadImage("images/caminar_" + a + ".png");
    caminar.push(imagen);
  }

  for (let a = 0; a < saltar_cant; a++) {
    let imagen = loadImage("images/saltar_" + a + ".png");
    saltar.push(imagen);
  }

  for (let a = 0; a < quieto_cant; a++) {
    let imagen = loadImage("images/quieto_" + a + ".png");
    quieto.push(imagen);
  }
  
  fondo = loadImage("images/forest.jpg");
  nube = loadImage("images/nube.webp");
}
