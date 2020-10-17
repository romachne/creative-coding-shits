import processing.video.*;

int cols, rows;
color clr;
Capture video;
PImage pic;

void setup() {
  size(640, 480);
  cols = 640;
  rows = 480;
  video = new Capture(this, cols, rows);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(0);
  
  set(0, height - video.height, video);
  
  clr = get(width/2, height/2);
  blendMode(DARKEST);
  fill(clr);
  noStroke();
  ellipse(width/2, height/2, 150, 150);
}
