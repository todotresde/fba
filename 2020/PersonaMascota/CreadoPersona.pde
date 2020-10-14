class CreadorPersona {
  Persona persona1, persona2, persona3;

  CreadorPersona() {
    persona1 = new Persona();
    persona2 = new Persona();
    persona3 = new Persona();
  }

  void dibujar() {
    persona1.dibujar();
    persona2.dibujar();
    persona3.dibujar();
  }

  void mousePresionado() {
    Mascota miMascota = new Mascota();
    miMascota.posX = 100;
    persona1.regalarMascota(miMascota);
    persona1.poneleCorreaATuMascota();
  }

  void teclaPresionada() {
    if (key == '1') {
      persona1.teLlamas("Pepe");
    } else if (key == '2') {
      persona2.teLlamas("Juan");
    } else if (key == '3') {
      persona3.teLlamas("Maria");
    } else if (key == 'a') {
      persona2.regalarMascota(new Mascota("Confite"));
      persona2.poneleCorreaATuMascota();
    } else if (keyCode == ' ') {
      persona1.olvidateDeTodo();
      persona2.olvidateDeTodo();
      persona3.olvidateDeTodo();
    }
  }
}
