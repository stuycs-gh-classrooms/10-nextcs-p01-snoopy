class Paddle {
  float x, y, w, h;

  Paddle(float px, float py, float pw, float ph) {
    x = px;
    y = py;
    w = pw;
    h = ph;
  } // paddle's class is coded to take 4 parameters (px,py,pw,ph) which will set the x, y width, height of the paddle

  void move(float xdistance) {
    x = constrain(x + xdistance, 0, width - w); /* new function, contrain. Takes parameters (value, min,max)
     So basically is if the value which is x + xdistance is less than the min, x will return the min. If it is
     greater than the max than x returns max. So when you press the arrow keys when x = 0, it wont go left anymore.
     Becuase it is constantly taking on the value of 0, it will only change if you press the right arrow.*/
  }
  void trackMouse() {
    x = constrain(mouseX - w / 2, 0, width - w); 
  }
//move is for keyboard but trackMouse is for tracking the mouse to move the paddle.

  void display() {
    fill(255);
    rect(x, y, w, h);
  } // self explanatory rect being built
}
