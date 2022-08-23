SerTodoPoderoso serTodoPoderoso;
XXXXX
void setup(){
  size(400, 400);
  serTodoPoderoso = new SerTodoPoderoso();
}

void draw(){
  background(200);
  serTodoPoderoso.dibujar();
}

void mouseClicked(){
  serTodoPoderoso.click();
}
