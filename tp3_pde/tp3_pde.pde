// Clar Agustina legajo 93551/8
//https://youtu.be/7QYTUcm6eN0

float circleSize;
int circleColor;
PImage imagen1;
float originalCircleSize;
float x, y, d;
int originalCircleColor;

void setup() {
  colorMode(HSB);
  size(800, 400);
  imagen1 = loadImage("vasarely.jpg.jpg");
  originalCircleSize = 84;
  circleSize = originalCircleSize;
  originalCircleColor = color(255, 255, 250, 0);  
  circleColor = originalCircleColor;
}

void draw() {
  background(0);
  fondo();
  mover();
  stroke(0, 50);
}

void dibujar() {
  fill(circleColor);
  ellipse(x, y, circleSize, circleSize);
}

void fondo() {
  image(imagen1, 0, 0, width / 2, height);
}

void mover() {
  // Ciclos for anidados para dibujar los círculos
  // Arriba
  for (int i = 0; i < 2; i++) { 
    for (int j = 0; j < 8; j++) {
      x = map(i, 0, 7, width / 2 + 240, 50);  // Ajustar a la izquierda
      y = map(j, 0, 18, 50, height - 100); 

      // Calcular tamaño y color de los círculos según la posición del mouse
      d = dist(mouseX + 100, mouseY + 100, x, y);
      circleSize = map(d, 0, width / 2, 80, originalCircleSize);
      circleColor = lerpColor(color(200, 200, 200), color(0, 0, 255), map(d, 0, width / 2, 0, 1));
      dibujar();
    }
  }
  // Derecha
  for (int h = 0; h < 8; h++) {
    for (int g = 0; g < 2; g++) {
      x = map(h, 0, 6, 640, 740);  // Ajustar a la izquierda
      y = map(g, 0, 6, 150, 670);

      // Calcular tamaño y color de los círculos según la posición del mouse
      d = dist(mouseX + 100, mouseY + 100, x, y);
      circleSize = map(d, 0, width / 2, 80, originalCircleSize);
      circleColor = lerpColor(color(#1BBC04), color(#E08A20), map(d, 0, 800, 0, 5));
      dibujar();
    }
  }
  // Izquierda
  for (int h = 0; h < 8; h++) {
    for (int g = 0; g < 2; g++) {
      x = map(h, 0, 6, 440, 540);  // Ajustar a la izquierda
      y = map(g, 0, 6, 150, 670);

      // Calcular tamaño y color de los círculos según la posición del mouse
      d = dist(mouseX + 100, mouseY + 100, x, y);
      circleSize = map(d, 0, width / 2, 80, originalCircleSize);
      circleColor = lerpColor(color(#1BBC04), color(#E08A20), map(d, 0, 800, 0, 5));
      dibujar();
    }
  }
  // Abajo
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 8; j++) {
      x = map(i, 0, 7, width / 2 + 240, 50);  // Ajustar a la izquierda
      y = map(j, 0, 19, 375, -2);

      // Calcular tamaño y color de los círculos según la posición del mouse
      d = dist(mouseX, mouseY, x, y);
      circleSize = map(d, 0, width / 2, 80, originalCircleSize);
      circleColor = lerpColor(color(200, 200, 200), color(0, 0, 255), map(d, 0, 400, 0, 1));
      dibujar();
    }
  } 
}

void keyPressed() {
  if (key == 'R' || key == 'r') {
    circleSize = originalCircleSize;
    circleColor = originalCircleColor;
  }
}
