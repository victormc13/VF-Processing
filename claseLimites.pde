class Limites {
  float x, y, ancho, alto;
  Limites(float x, float y, float ancho, float alto) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    this.alto = alto;
  }
  
  void rectangulos() {
    noStroke();
    noFill();
    rect(x, y, ancho, alto);
  }

}
