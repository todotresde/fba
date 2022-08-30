SerTodoPoderoso serTodoPoderoso;

void setup(){
  size(400, 400);
  serTodoPoderoso = new SerTodoPoderoso(10);
}

void draw(){
  background(200);
  serTodoPoderoso.dibujar();
}
