PVector p = new PVector(500, 300);
Ball b0 = new Ball(p, 10);

void setup() {
  size(1000, 600);
  b0.moving = true;
}

void draw() {
  background(255);
  b0.display();
  b0.move(); 
}

void keyPressed() {
 if (key == ' ') {
  b0.xspeed = 3;
  b0.yspeed = -3;
 if (key == 'p') {
  b0.moving = !b0.moving;
 }
 } // NOTE FOR LATER: TO CONTROL THE DIRECTION THAT THE BALL BOUNCES, MESS AROUND WITH Y AND X SPEED
}
