
// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float left;

  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    left = random(2);
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);
    fill(0);
  }

  void drive() {
    if (left <= 1) {
      xpos+= xspeed;
      if (xpos > width) {
        xpos = 0;
      } else {
        xpos = xpos + xspeed;
        if (xpos > width) {
          xpos=0;
        }
      }
    }
  }
}