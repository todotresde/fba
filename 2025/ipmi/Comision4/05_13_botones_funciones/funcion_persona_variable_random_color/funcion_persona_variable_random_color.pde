
void setup() {
  size(400, 400);
}
void draw() {
  if (frameCount < 1000) {
    dibujarPersona(
      round(random(0, 400)),
      round(random(0, 400)),
      color(random(255),random(255),random(255))
      );
  }
}
