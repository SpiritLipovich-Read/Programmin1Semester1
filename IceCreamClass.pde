class IceCream {
  int xpos;
  int ypos;
  int r;
  int g;
  int b;
  
  
  IceCream(int tempX, int tempY, int tempR, int tempG, int tempB) {
    xpos = tempX;
    ypos = tempY;
    r = tempR;
    g = tempG;
    b = tempB;
  }
  
  void display() {
    fill(r, g, b);
    ellipse(xpos, ypos, 100, 100);
    fill(250, 200, 0);
    triangle(xpos + 5, ypos, xpos -100, ypos +180, xpos +180, ypos +180);
  }
}