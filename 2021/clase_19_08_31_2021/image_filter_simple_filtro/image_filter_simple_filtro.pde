PImage photo;
int dimensionPixels;

color miColor = color(255,0,0);


void setup(){
  size(400,400);
  photo = loadImage("shiny.jpg");
  dimensionPixels = photo.width * photo.height;
}

void draw(){
  photo.loadPixels();
  for(int i=0; i<dimensionPixels; i++){
    if(i%3 == 0){
      color elColorDelPixel = photo.pixels[i];
      int rojo = round(map(mouseX, 0, width, 0, 255));
      photo.pixels[i] = color(rojo, green(elColorDelPixel), blue(elColorDelPixel));
    }
  }
  photo.updatePixels();
  
  image(photo, 0, 0, width, height);
}
