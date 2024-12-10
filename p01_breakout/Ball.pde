class Ball {
  PVector position, velocity; //stores position and velocity
  int size;
  color c; // for the color of the ball 
  
  Ball(PVector p, int s) {
    position = p; // p is inputed with both and x and y componment if you look back to the driver, (.. , ..)
    velocity = new PVector(4, 4); // ball moves in a diagonal because this is eventually added to position.
    size = s; // is basically coded to be the diameter of the ball
    c = color(255); // white
  }
  
  void move() {
    position.add(velocity); /* we love phsyics, vector additions, thats why I said it would move diagnally. 
    We can change the angle by doing 3,4 or 4,5 or smth like that */
  }
  
  void display() {
    fill(c);
    ellipse(position.x, position.y, size, size); //can't use circle() because it doesn't support (float,float,int,int)
  }
  
  void checkEdges() {
    if (position.x <= size / 2 || position.x >= width - size / 2) {
      velocity.x *= -1;
    } // code from last marking period I think for all the times we try to bounce a square I think.
    if (position.y <= size / 2) {
      velocity.y *= -1;
    }
    if (position.y >= height) {
      lives--; 
      reset(new PVector(width / 2, height / 2)); // this last if statement dictates the live system.
      // reset is written below.
    }
  }// code from last marking period I think for all the times we try to bounce a square I think.
  
  void checkPaddleCollision(Paddle p) {
    if (position.y + size / 2 >= p.y &&
        position.x >= p.x && position.x <= p.x + p.w) {
      velocity.y *= -1;
    }
  }
  
  void checkBrickCollision(Brick[][] grid) {
    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        Brick brick = grid[r][c];
        if (brick != null && 
            position.x >= brick.x && position.x <= brick.x + brick.w &&
            position.y >= brick.y && position.y <= brick.y + brick.h) {
          grid[r][c] = null; // esstenially makes the existening brick disappear.
          velocity.y *= -1; //ball's direction is reversed
          score += 10; //pretty logical, hit brick = increased score
        }
      }
    }
  }
  
  void reset(PVector p) {
    position = p; /* I tried to make the ball spawn randomly but that causes it to spawn in the bricks 
    which got playeres points automatically and continued to destroy the entire middle of bricks*/
    velocity.set(4, 4);
  }
}
