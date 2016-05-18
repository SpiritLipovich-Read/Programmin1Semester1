
Lines[] myLines = new Lines [10];

void setup() {
  size(1000, 500);
  background(random(100), random(100), random(100));
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 20));
  }
}
void draw() {
  for (int i=0; i<myLines.length; i++) {
    myLines[i].display();
  }
}