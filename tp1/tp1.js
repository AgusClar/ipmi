//https://youtu.be/ImA6GZHjUFM Clar Agustina, 93551/8, comisión 5
let foto;
let ellipseSize;
let ellipseColor;

let originalEllipseSize;
let originalEllipseColor;
let x, y, d;
 
function preload() {
  foto = loadImage("data/vasarely.jpg.jpg");  
}

function setup() {
  createCanvas(800, 400);
  colorMode(RGB); 
  
  originalEllipseSize = 84;
  ellipseSize = originalEllipseSize;


  originalEllipseColor = color(200, 200, 200);
  ellipseColor = originalEllipseColor;

  x = width / 2;
  y = height / 2;
}

function draw() {
  background(0);
  
  stroke(0, 20);
  fill(ellipseColor);
  ellipse(x, y, ellipseSize, ellipseSize);

  image(foto, 0, 0, width / 2, height); 

  for (let i = 0; i < 2; i++) { 
    for (let j = 0; j < 8; j++) {
      x = map(i, 0, 1, width / 2 + 142, width / 2 + 240);  
      y = map(j, 0, 7, 50, height - 250);  

      d = dist(mouseX + 100, mouseY + 100, x, y);
      ellipseSize = map(d, 0, width / 2, 80, originalEllipseSize);
      ellipseColor = lerpColor(color(200, 200, 200), color(0, 0, 255), map(d, 0, width / 2, 0, 1));  
      dibujar();
    }
  }

  // Sección derecha
  for (let h = 0; h < 8; h++) {
    for (let g = 0; g < 2; g++) {
      x = map(h, 0, 7, width - 161, width - 90); 
      y = map(g, 0, 1, 150, 250);  

      d = dist(mouseX + 100, mouseY + 100, x, y);
      ellipseSize = map(d, 0, width / 2, 80, originalEllipseSize);
      ellipseColor = lerpColor(color('#1BBC04'), color('#E08A20'), map(d, 0, 800, 0, 1));  
      dibujar();
    }
  }

  // Sección izquierda
  for (let h = 0; h < 8; h++) {
    for (let g = 0; g < 2; g++) {
      x = map(h, 0, 7, width - 328, width - 258);  // Ajuste en x para acercar a la derecha

      y = map(g, 0, 1, 150, 250);  

      d = dist(mouseX + 90, mouseY + 100, x, y);
      ellipseSize = map(d, 0, width / 2, 80, originalEllipseSize);
      ellipseColor = lerpColor(color('#1BBC04'), color('#E08A20'), map(d, 0, 800, 0, 1));  
      dibujar();
    }
  }

  // Sección inferior
  for (let i = 0; i < 2; i++) {
    for (let j = 0; j < 8; j++) {
      x = map(i, 0, 1, width / 2 + 142, width / 2 + 239);  // Ajuste en x
      y = map(j, 0, 7, height - 50, height - 150);  // Ajuste en y

      d = dist(mouseX, mouseY, x, y);
      ellipseSize = map(d, 0, width / 2, 80, originalEllipseSize);
      ellipseColor = lerpColor(color(200, 200, 200), color(0, 0, 255), map(d, 0, 400, 0, 1));  // RGB
      dibujar();
    }
  } 
}

function dibujar() {
  fill(ellipseColor);
  //noStroke();
  ellipse(x, y, ellipseSize, ellipseSize);
}

function keyPressed() {
  if (key === 'R' || key === 'r') {
    ellipseSize = originalEllipseSize;
    ellipseColor = originalEllipseColor;
  }
}
