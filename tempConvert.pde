void settings () {
  size(500, 500);
}

void draw () {
  background(200);
  line(0, 250, width, 250);
  ellipse(mouseX, 250, 5, 5);
  stroke(0);
  textSize(20);
  text("f=" + mouseX + "   c ="+ tempConverter(mouseX), 10, 25);
}

float tempConverter (float f) {
  float c = ((f-32)*(5.0/9.0));
  return c;
}