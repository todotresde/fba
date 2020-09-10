boolean clickBotonOK() {
  if (mouseX > 350) {
    return true;
  }
  return false;
}

boolean clickBotonKO() {
  if (mouseX < 50) {
    return true;
  }
  return false;
}
