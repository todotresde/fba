
void setup() {
  size(400, 400);
}
void draw() {
  if (frameCount < 100) {
    dibujarPersona(
      round(random(0, 400)),
      round(random(0, 400))
      );
  }
}
