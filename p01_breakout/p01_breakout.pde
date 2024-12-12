// Global variables
Paddle paddle; 
Ball ball;
Brick[][] bricks; 
int rows = 5, cols = 8;
int brickWidth, brickHeight;
int score = 0;
int lives = 3;
boolean isPaused = false;

void setup() {
  size(1000, 500); //self explanatory. Day 1 code
  brickWidth = width / cols;  
  brickHeight = 20;
  
  // Initialize game objects
  paddle = new Paddle(width / 2 - 50, height - 80, 100, 10); //creates the paddle corresponding to the width and height.
  // more documention in the paddle class tab.
  ball = new Ball(new PVector(width / 2, height / 2), 15); // calls a ball with the specified PVector and size of 15.
  // more documention in the ball class tab.
  bricks = new Brick[rows][cols];
  createBricks();
}

void draw() {
  background(0); //black
   paddle.trackMouse();
  if (!isPaused) {
    ball.move();
    ball.checkEdges();
    ball.checkPaddleCollision(paddle);
    ball.checkBrickCollision(bricks);
  } //TRUE when game is not paused and calls all of these methods from the ball class.
  
  paddle.display();
  ball.display(); //always being displayed so it isn't in the !isPaused if statement.
  displayBricks();
  
  // Display score and lives
  fill(255);
  textSize(20);
  text("Score: " + score, 40, 20);
  text("Lives: " + lives, width - 100, 20);
  
  if (lives <= 0) {
    textSize(40);
    textAlign(CENTER);
    text("Game Over", width / 2, height / 2);
    noLoop();
  }
}

void keyPressed() {
  if (keyCode == LEFT) paddle.move(-15);
  if (keyCode == RIGHT) paddle.move(15);
  if (key == ' ') isPaused = !isPaused; // Play/Pause
  if (key == 'r') resetGame(); // Reset
} // readable code.

void createBricks() {
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < cols; c++) {
      int x = c * brickWidth;
      int y = r * brickHeight + 50;
      bricks[r][c] = new Brick(x, y, brickWidth, brickHeight);
    }
  }
}

void displayBricks() {
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < cols; c++) {
      if (bricks[r][c] != null) {
        bricks[r][c].display();
      }
    }
  }
}

void resetGame() {
  score = 0;
  lives = 3;
  ball.reset(new PVector(width / 2, height / 2));
  createBricks();
  loop();
}
