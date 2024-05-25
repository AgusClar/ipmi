 
//TP2
//COMISION 5
// Agustina Clar, 93551/8

int miVariable = 1000;
int pantalla, tiempo, suma, diametro, animacion, limiteDeAnimacion, opacidad, tamTexto;

boolean ultimaPantalla;
color colorDelBoton, colorDelBotonCircular;


//String texto= "ella se desnuda en el paraíso de su memoria \n ella desconoce el feroz destino de sus visiones \n ella tiene miedo de no saber nombrar lo que no existe. ";
PImage imagen1, imagen2, imagen3;
PFont fuente1, fuente2;

void setup() { 
  
 size (640, 480);
 fuente1=loadFont("OldEnglishTextMT-48.vlw");
 fuente2=loadFont("Magneto-Bold-48.vlw");
 textFont(fuente1);
 textSize (24);
   animacion= 0;
     limiteDeAnimacion= 10;
     opacidad = 0;
  background (0);
  println (frameCount); 
  imagen1 = loadImage("pizarnik.jpg");
  imagen2= loadImage("pizarnik2.jpg");
  imagen3= loadImage("pizarnik33.jpg");
  pantalla = 0;
  tiempo = 10;
  suma = 1;
  diametro = 50;
  ultimaPantalla = false;
  colorDelBoton = color(120, 120, 120);
  colorDelBotonCircular = color(120, 120, 120);
}

void draw() {
 
  if (pantalla == 0) {
   miVariable= frameCount/ 2;
   //miRect= random(10, 180);
   println(frameCount); 
   background (0, #2F0D81,#2F0D81);
   
   image(imagen1, 0, 0);
   fill (200, 0, 0, 132);
   push();
  
    text("ella se desnuda en el paraíso de su memoria", miVariable, animacion, height/2); 
    textFont(fuente1);
    pop(); 
    
      animacion++; 
  
  } else if (pantalla == 1) {

    push();
    background(0, #2F0D81,#2F0D81);
    image(imagen2, 0, 0);
    fill(#DEFFE7);
  
    textFont(fuente2);
    textSize(24);
    text("ella desconoce el feroz destino de sus visiones ", opacidad, 400);
   
    pop();
  } else if (pantalla == 2) {
    background(0, 0, 0);
    image(imagen3, 0, 0);
    textFont(fuente1);
    textSize(24);
    text("ella tiene miedo de no saber nombrar lo que no existe.", 25, height/2);
   
    textFont(fuente2);
     textSize(24);
     text("poema de Pizarnik", miVariable, animacion, 500);
        animacion++; 
    if (ultimaPantalla == true) {
      push();

      fill(colorDelBotonCircular);
      circle(540, 90, diametro);

      fill(0);
      pop();
    }
  } else {
    background(0, #2F0D81,#2F0D81);
    
  }

  if (ultimaPantalla == false) {
    tiempo = tiempo  + suma;
  }

  if (tiempo >= 300 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    }
  }
  println(frameCount, tiempo);
}

void mouseClicked() {
 
  if (ultimaPantalla == true) {
    if (dist(540, 90, mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 10; 
      suma = 1;
      ultimaPantalla = false;
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla == true) {

    if (dist(160, height/2, mouseX, mouseY) < diametro/2) {
        colorDelBotonCircular = color(100, 300, 0);

    } else {
        colorDelBotonCircular = color(120, 120, 120);

    }
  }
}
