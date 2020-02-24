import processing.sound.*;
AudioSample sonido1;
pantallas p;
int turno;
int j1,j2;
Amlo a1, a2, a3, a4;
Nieto n1, n2, n3, n4;
Fox f1, f2, f3, f4;
Calderon c1, c2, c3, c4;
Zedillo z1, z2, z3, z4;
int vida1 = 100, vida2 = 100;

PFont fuente1, fuente2;
void setup(){
  size(1300,600);
  p = new pantallas();
  fuente1 = loadFont("AgencyFB-Bold-48.vlw");
  fuente2 = loadFont("AgencyFB-Reg-48.vlw");
  //seleccion
  a1 = new Amlo(-40,100);
  n1 = new Nieto(210,100);
  f1 = new Fox(460,100);
  c1 = new Calderon(710,100);
  z1 = new Zedillo(960,100);
  //j1
  a2 = new Amlo(100,200);
  n2 = new Nieto(100,200);
  f2 = new Fox(100,200);
  c2 = new Calderon(100,200);
  z2 = new Zedillo(100,200);
  //j2
  a3 = new Amlo(820,200);
  n3 = new Nieto(820,200);
  f3 = new Fox(820,200);
  c3 = new Calderon(820,200);
  z3 = new Zedillo(820,200);
  //Personaje ganador
  a4 = new Amlo(450,200);
  n4 = new Nieto(450,200);
  f4 = new Fox(450,200);
  c4 = new Calderon(450,200);
  z4 = new Zedillo(450,200);
  sonido1 = new SoundFile(this,"Himno Mexicano.mp3");
  sonido1.play();
  sonido1.loop();
}
void draw(){
p.display();
}
