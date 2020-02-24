class pantallas{
  int pan;
  
  pantallas(){
    pan =0;
    noStroke();
  }
  

void pantalla1(){
  background(165,69,25);
  textFont(fuente1);
  textSize(100);
  fill(67,37,27);
  rect(225,100,850,150);
  fill(255);
  text("La Batalla Presidencial",280,200);
  textFont(fuente2);
   textSize(40);
  text("Presione la tecla (S) para continuar",420,550);
  if(vida1 <= 0 || vida2 <= 0){vida1 = 100; vida2 = 100;}
  if(key == 'S'|| key == 's'){pan = 1;}
}
void pantalla2(){
  background(165,69,25);
  a1.display();
  n1.display();
  f1.display();
  c1.display();
  z1.display();
  pushMatrix();
  textFont(fuente2);
  //textSize();
  fill(255);
  text("Cada jugador seleccione a su personaje presionando la tecla indicada",100,60);
 // text("Amlo",120,450);
  text("(A)",130,500);
  //text("Nieto",370,450);
  text("(N)",380,500);
 // text("Fox",640,450);
  text("(F)",640,500);
 // text("Calderón",840,450);
   text("(C)",890,500);
  //text("Zedillo",1110,450);
   text("(Z)",1140,500);
  popMatrix();
 
 if((key== 'A' || key == 'a') && (turno == 0)) {
   j1 =0;
   turno=1;
 }
 else{
 if((key == 'A'|| key== 'a') && (turno == 1)&& (j1 != 0)){
 j2 = 0;
 pan=2;}
 }
 if((key== 'N' || key == 'n') && (turno == 0)) {
 j1 =1;
 turno = 1;}
  else{
 if((key == 'N'|| key== 'n') && (turno == 1)&& (j1 != 1)){
 j2 = 1;
 pan = 2;}
 }
 if((key== 'F' || key == 'f') && (turno == 0)) {
   j1 =2;
   turno = 1;
 }
  else{
 if((key == 'F'|| key== 'f') && (turno == 1)&& (j1 != 2)){
 j2 = 2;
 pan = 2;}
 }
 if((key== 'C' || key == 'c') && (turno == 0)) {
   j1 =3;
   turno = 1;
 }
  else{
 if((key == 'C'|| key== 'c') && (turno == 1)&& (j1 != 3)){
 j2 = 3;
 pan = 2;}
 }
  if((key== 'Z' || key == 'z') && (turno == 0)) {
   j1 =4;
   turno = 1;
 }
  else{
 if((key == 'Z'|| key== 'z') && (turno == 1)&& (j1 != 4)){
 j2 = 4;
 pan = 2;}
 }
  
}
void pantalla3(){
  background(165,69,25);
  fill(67,37,27);
  rect(50,50,50,500);
  rect(50,500,400,50);
  rect(1200,50,50,500);
  rect(1200,500,-400,50);
 fill(255,0,0);
 if((key == 'O'|| key =='o')&& (turno == 0)){vida2 -= 1; turno = 0;}
 if((key == 'P'|| key =='p') && (turno == 1)){vida2 -= 3;turno = 0;}
 if((key == 'Q'|| key =='q')&& (turno == 0)){vida1 -= 3; turno = 1;}
 if((key == 'W'|| key =='w') && (turno == 1)){vida1 -= 2;turno = 1;}

 if(vida1<=0){pan = 3;}
 if(vida2<=0){pan = 3;}

  textFont(fuente2);
  textSize(40);
  fill(255);
  text("¡Que comience la batalla!",500,50);
  textSize(25);
  text("Nivel de argumentos",110,115);
  text("Nivel de argumentos",790,115);
  text("Jugador 1: presiona q y w para atacar",100,580);
  text("Jugador 2: presiona o y p para atacar",900,580);
  
 if(j1 ==0){a2.display();fill(255,255,0);rect(110,80,vida1*4,10);}
 if(j1 ==1){n2.display();fill(0,0,255);rect(110,80,vida1*4,10);}
 if(j1 ==2){f2.display();fill(0,255,0);rect(110,80,vida1*4,10);}
 if(j1 ==3){c2.display();fill(255,125,0);rect(110,80,vida1*4,10);}
 if(j1 ==4){z2.display();fill(255,0,0);rect(110,80,vida1*4,10);}
 
 if(j2 ==0){a3.display();fill(255,255,0);rect(790,80,vida2*4,10);}
 if(j2 ==1){n3.display();fill(0,0,255);rect(790,80,vida2*4,10);}
 if(j2 ==2){f3.display();fill(0,255,0);rect(790,80,vida2*4,10);}
 if(j2 ==3){c3.display();fill(255,125,0);rect(790,80,vida2*4,10);}
 if(j2 ==4){z3.display();fill(255,0,0);rect(790,80,vida2*4,10);}

}

void pantalla4(){
  background(165,69,25);
  textFont(fuente2);
  
  textSize(40);
  fill(255);
  text("El ganador de la batalla es: ",470,50);
  textSize(30);
  text("Presione (e) para iniciar un juego nuevo",460,530);
  text("Presione (x) para salir del juego",495,570);
  if(key == 'E'|| key == 'e'){pan = 0;}
  if(key =='X'|| key== 'x' ){exit();}
  textSize(40);
}
void display(){
  switch(pan){
    case 0: pantalla1();
    break;
    case 1: pantalla2();
    break;
    case 2: pantalla3();
    break;
    case 3: pantalla4();
    if((vida1 <= 0)&&(j2 == 0)){a4.display();fill(255);text("Jugador 2",570,100);}
    if((vida1 <= 0)&&(j2 == 1)){n4.display();fill(255);text("Jugador 2",570,100);}
    if((vida1 <= 0)&&(j2 == 2)){f4.display();fill(255);text("Jugador 2",570,100);}
    if((vida1 <= 0)&&(j2 == 3)){c4.display();fill(255);text("Jugador 2",570,100);}
    if((vida1 <= 0)&&(j2 == 4)){z4.display();fill(255);text("Jugador 2",570,100);}
    
    if((vida2 <= 0)&&(j1 == 0)){a4.display();fill(255);text("Jugador 1",570,100);}
    if((vida2 <= 0)&&(j1 == 1)){n4.display();fill(255);text("Jugador 1",570,100);}
    if((vida2 <= 0)&&(j1 == 2)){f4.display();fill(255);text("Jugador 1",570,100);}
    if((vida2 <= 0)&&(j1 == 3)){c4.display();fill(255);text("Jugador 1",570,100);}
    if((vida2 <= 0)&&(j1 == 4)){z4.display();fill(255);text("Jugador 1",570,100);}
    
    break;
  }
}
}
