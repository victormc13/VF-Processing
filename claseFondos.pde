class Fondos {
  PImage [] fondos = new PImage [6];
  int fx, fy;

  Fondos() {
    fx = 0;
    fy = 0;
    for (int i=0; i<6; i++) {
      fondos[i] = loadImage("fondo"+i+".jpg");
      
    }
  }

  void inicioMostrar () {
    image(fondos[0], fx, fy, 700, 600);
  }

  void instrucciones() {
    image(fondos[1], fx, fy, 700, 600);
  }

  void ganaste() {
    image(fondos[2], fx, fy, 700, 600);
  }

  void paisajeprincipal() {
    image(fondos[3], fx, fy, 700, 600);
  }

  void perdiste() {
    image(fondos[4], fx, fy, 700, 600);
  }

  void Final() {
    image(fondos[5], fx, fy, 700, 600);
  }
}
