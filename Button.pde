//class name
class Button {
  //class variable
  boolean button;
  int x, y, w, h;


  //class constructor
  Button(int tempX, int tempY, int tempW, int tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    button = false;
  }


  //Class attributes
  void display() {
    
    if (button) {
      fill(0);
      text("Button ON: " + str(button), x, y);
      fill(55);
      stroke(222);
    } else {
      fill(0);
      text("Button ON: " + str(button), x, y);
      fill(175);
      stroke(255, 0, 0);
    }
    rect(x, y, w, h);
  }

  // class behavior
  void clickButton() {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      button = !button;
    }
  }
}