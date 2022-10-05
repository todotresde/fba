String [] archivoAlumnosCSV;

void setup(){
  size(800, 500);
  textSize(15);
  fill(0);
  archivoAlumnosCSV = loadStrings("alumnos.csv");
}

void draw(){
  background(200);
  
  println("Hay " + archivoAlumnosCSV.length + " lineas");  
  for (int i = 0 ; i < archivoAlumnosCSV.length; i++) {
    String [] datos = split(archivoAlumnosCSV[i], ",");
    
    String dni = datos[0];
    String nombre = datos[1];
    String apellido = datos[2];
    
    text(dni + " - " + nombre + " - " + apellido, 0, (i * 15) + 15);
  }
}
