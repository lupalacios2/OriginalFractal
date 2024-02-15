void setup() {
  size(512, 512);
  background(0);
  
  stroke(255);
  noFill();
}

void draw() {
  fractal(250);
}

void fractal(int len) {
  if (len <= 10) { // <= 45 was prev
    ellipse(0, len, len * 2, len * 2);
    ellipse(len, 0, len * 2, len * 2);
  } else {
    fractal(len / 2);
    ellipse(0, len, len * 2, len * 2);
    ellipse(len, 0, len * 2, len * 2);
  }
}
