XML archivoAlumnosXML;

void setup(){
  size(800, 500);
  textSize(15);
  fill(0);
  archivoAlumnosXML = loadXML("alumnos.xml");
}

void draw(){
  background(200);
  
  XML [] alumnos = archivoAlumnosXML.getChildren("alumno");
  
  for (int i = 0; i < alumnos.length; i++) {
    String dni = alumnos[i].getString("dni");
    String nombre = alumnos[i].getString("nombre");
    String apellido = alumnos[i].getString("apellido");
    
    text(dni + " - " + nombre + " - " + apellido, 0, (i * 15) + 15);
  }
}
