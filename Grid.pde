//GRID
void setup() {
  size(1000, 1000);
  frameRate(3);
}

void draw() {
  background(111);
  drawGrid();
  noLoop();
  
}

void drawGrid() {
  for (int i=100; i<=width; i=i+100) {
    line(0, i, width, i);//horizontal
    line(i, 0, i, height);//vertical
    fill(255);
    text(i, 5, i+4);
    text(i, i-10, 10);
  }
}

