PImage photo;
int dimensionPixels;

color miColor = color(255,0,0);


void setup(){
  size(400,400);
  photo = loadImage("shiny.jpg");
  dimensionPixels = photo.width * photo.height;
  photo.loadPixels();
  for(int i=0; i<dimensionPixels; i++){
    color elColorDelPixel = photo.pixels[i];
    photo.pixels[i] = color(red(elColorDelPixel), green(elColorDelPixel), blue(elColorDelPixel));
  }
  photo.updatePixels();
}

void draw(){
  image(photo, 0, 0);
}
