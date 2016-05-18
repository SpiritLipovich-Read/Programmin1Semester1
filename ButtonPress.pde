//
Button btn1 = new Button(50, 50, 100, 100);
Button btn2 = new Button(200, 200, 100, 100);


void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  btn1.display();
  btn2.display();
}

void mousePressed() {
  btn1.clickButton();
  btn2.clickButton();
}