class Ball {
  //instance variables
  PVector center;
  int xspeed;
  int yspeed;
  int bsize;


  //default constructor
  Ball(PVector p, int s) {
    bsize = s;
    center = new PVector(p.x, p.y);
  }


  boolean collisionCheck(Ball other) {
    return ( this.center.dist(other.center)
      <= (this.bsize/2 + other.bsize/2) );
  }//collisionCheck()


  //visual behavior
  void display() {
    fill(0);
    circle(center.x, center.y, bsize);
  }//display()


  //movement behavior
  void move() {
    if (center.x > width - bsize/2 ||
      center.x < bsize/2) {
      xspeed*= -1;
    }
    if (center.y > height - bsize/2 ||
      center.y < bsize/2) {
      yspeed*= -1;
    }
    center.x+= xspeed;
    center.y+= yspeed;
  }//move()
}//Ball
