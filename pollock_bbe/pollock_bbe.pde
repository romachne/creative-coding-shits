color bgColor = color(0, 0, 0),
      primaryColor = color(255, 255, 255);

int fRate = 30;

void setup() {
  size(400, 400, P3D);
  frameRate(fRate);
  background(bgColor);
}

void draw() {
  stroke(primaryColor);
  ambientLight(255, 64, 255);
  directionalLight(128, 200, 64, 0, 0, -1);
  drawSphere();
  
  if ((pmouseX == 0) && (pmouseY == 0)) {
    background(bgColor);
  }
}

void drawEllipse() {
  float diameter = random(10, 30);
  color fillColor = color(random(0, 255), random(0, 255), random(0, 255));
  fill(fillColor);
  noStroke();
  
  ellipse(mouseX, mouseY, diameter, diameter);
}

void drawSphere() {
  float diameter = random(10, 30),
        zIndex = random(-150, 150);
  color fillColor = color(random(0, 255), random(0, 255), random(0, 255));
  fill(fillColor);
  noStroke();
  
  translate(mouseX, mouseY, zIndex);
  sphere(diameter);
  translate(-1 * mouseX, -1 * mouseY, -1 * zIndex);
}

void drawLine() {
  strokeWeight(1);
  
  line(pmouseX, pmouseY, mouseX, mouseY);
}
