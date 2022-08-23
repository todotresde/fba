int cant = 100;
ObjetoElipse [] misObjetos = new ObjetoElipse [cant]; 

void setup(){
  size(400,400);
  for(int i = 0; i<cant;i++){
    misObjetos[i] = new ObjetoElipse();
  }
}

void draw(){
  background(200);
  for(int i = 0; i<cant;i++){
    misObjetos[i].dibujar();
  }
}
