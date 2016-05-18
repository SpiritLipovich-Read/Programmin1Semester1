//Inch to CM
void settings () {
  size(500, 500);
}

void draw () {
  background(200);
  line(0, 250, width, 250);
  ellipse(mouseX, 250, 5, 5);
  stroke(0);
  textSize(20);
  text("in=" + mouseX + "   cm ="+ converter(mouseX), 10, 25);
  text("Press any key for disco mode", 10, 400);
  if (keyPressed == true) {
    background(random(150), random(150), random(150));
  }
}

float converter (float in) {
  float cm = (in/0.3937);
  return cm;
}