Table archivoAlumnosCSV;

void setup(){
  size(800, 500);
  textSize(15);
  fill(0);
  archivoAlumnosCSV = loadTable("alumnos.csv", "header, csv");
  println(archivoAlumnosCSV.getRowCount() + " total de filas");
}

void draw(){
  background(200);
  
  int rowNumber = 0;
  for (TableRow row : archivoAlumnosCSV.rows()) {

    String dni = row.getString("DNI");
    String nombre = row.getString("NOMBRE");
    String apellido = row.getString("APELLIDO");

    text(dni + " - " + nombre + " - " + apellido, 0, (rowNumber * 15) + 15);
    rowNumber++;
  }
}
