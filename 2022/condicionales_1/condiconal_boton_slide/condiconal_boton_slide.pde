PImage imagen;
int numImagen = 1;
int totalImagenes = 3;

void setup(){
  size(400,400);
  imagen = loadImage("img0" + numImagen + ".jpg");
}

void draw(){
  background(200);
  image(imagen, 0, 0, width, height);
  
}

void mouseClicked(){
  if(mouseX > width * 0.9){
    numImagen++;
    if(numImagen == totalImagenes + 1){
      numImagen = 1;
    }
  }else if(mouseX < width * 0.1){
    numImagen--;
    if(numImagen == 0){
      numImagen = totalImagenes;
    }
  }
  imagen = loadImage("img0" + numImagen + ".jpg");
}
