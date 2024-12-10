class Brick {
  float x, y, w, h;
  color c;
  
  Brick(float px, float py, float pw, float ph) {
    x = px;
    y = py;
    w = pw;
    h = ph;
    c = color(random(255), random(255), random(255));
  }
  
  void display() {
    fill(c);
    rect(x, y, w, h);
  } // the nested for loops are in the driver under makeBricks that actually uses 2D arrays to make the bricks.
}
