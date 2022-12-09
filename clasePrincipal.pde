class Principal {
  int cantidad = 3;
  int estado;
  Limites [] lim = new Limites[4];
  Rocket [] rockets = new Rocket [1];
  Rocket [] rockets1 = new Rocket [1];
  Vida [] life = new Vida [cantidad];
  Eco e;
  Fondos f; 
  Pokeball p;
  int dos = 350;

  Principal () {
    for (int i=0; i<rockets.length; i++) {
      rockets [i] = new Rocket(190+i*dos, 0);
    }
    for (int i=0; i<rockets.length; i++) {
      rockets1 [i] = new Rocket(550+i*dos, 500);
    }
    for (int i=0; i<cantidad; i++) {
      life [i] = new Vida(490+i*50, -30);
    }
    e = new Eco (140, 40, 3);
    f = new Fondos ();
    p = new Pokeball();
  }

  void display() {
    estados();
  }

  void jugando() {
    f.mapa();
    e.dibujar();
    p.objetivo();
    for (int i=0; i<rockets.length; i++) {
      rockets [i].mover();
      rockets [i].Dibujar();
    }
    for (int i=0; i<rockets.length; i++) {
      rockets1 [i].mover1();
      rockets1 [i].Dibujar();
    }
    capturado();
    andando();
  }

  void andando() {
    for (int i=0; i<cantidad; i++) {
      life [i].vida();
    }
  }

  void capturado() {
    for (int i=0; i<rockets.length; i++) {
      float distancia = dist(e.x, e.y, rockets[i].x, rockets[i].y);
      if (distancia<30) {
        cantidad = cantidad - 1;
        e.x = 140;
        e.y = 40;
      }
    }
  }

  void moverEco(int tecla) {
    if (e.y<520) {
      if (tecla == DOWN ) {
        e.y += 3;
      }
    }
    if (e.y>0) {
      if (tecla == UP) {
        e.y -=3;
      }
    }
    if (e.x>0) {
      if (tecla == LEFT) {
        e.x -=3;
      }
    }

    if (e.x<630) {
      if (tecla == RIGHT) {
        e.x +=3;
      }
    }
  }
  

  void estados() {
    if (estado == 0) {
      f.inicio();
    }
    if (estado == 1) {
      f.reglas();
    }
    if (estado == 2) {
      jugando();
    }
    if (estado == 3) {
      f.ganaste();
    }
    if (estado == 4) {
      f.perdiste();
    }
    if (estado == 5) {
      f.fin();
    }
  }

  void cambiarEstado (int tecla) {
    if (estado == 0) {
      if (tecla == 'E' || tecla == 'e') {
        estado = 1;
      }
    }
    if (estado == 1) {
      if (tecla == 'J' || tecla == 'j') {
        estado = 2;
      }
    }
    if (estado == 2) {
      float distancia2 = dist(e.x, e.y, p.px, p.py);
      if (distancia2<60) {
        estado = 3;
      }
    }
    if (estado == 3 || estado == 4) {
      cantidad = 3;
      e.x = 140;
      e.y = 40;
      if (tecla == 'R' || tecla == 'r') {
        estado = 2;
      }
      if (tecla == 'C' || tecla == 'c') {
        estado = 5;
      }
    }
    if (estado == 5) {
      if (tecla == 'V' || tecla == 'v') {
        estado = 0;
      }
    }
  }

  void perder() {
    if (cantidad == 0 ) {
      estado = 4;
    }
  }
}
