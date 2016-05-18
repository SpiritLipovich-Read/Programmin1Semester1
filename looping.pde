void setup() {
  size(500, 500);
  frameRate(4);
}

void draw() {
  int i = 0;
  while (i <500) {
    line(0, i, 500, i);
    i=i +10;
  }
}


