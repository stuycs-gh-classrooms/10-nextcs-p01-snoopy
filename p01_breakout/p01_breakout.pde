PVector p = new PVector(250,250);
Ball b0 = new Ball(p, 10);

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  b0.display();
  b0.move(); 
}

void keyPressed() {
 if (key == ' ') {
  b0.yspeed = -1; 
 }
}
