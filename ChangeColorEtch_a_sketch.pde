
int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
}

void draw() {
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      stroke(255);
    }
    if (key == 'x' || key == 'X') {
      stroke(0);
    }
  }
}



void keyPressed() {
  if (key== CODED) {
    if (keyCode== RIGHT) {
      if (x>=width) {
        x=width;
      }
      moveRight(1);
    } else if (keyCode == DOWN) {
      if (y>=height) {
        y=height;
      }
      moveDown(1);
    } else if (keyCode == UP) {
      if (y>=height) {
        y=height;
      }
      moveUp(1);
    } else if (keyCode == LEFT) {
      if (x>=width) {
        x=width;
      }
      moveLeft(1);
    }
  }
}


// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

//Draw down line
void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x, y+i);
  }
  y=y+(10*rep);
}

//move left
void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x-i, y);
  }
  x=x-(10*rep);
}

//Move Up
void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point (x, y-i);
  }
  y=y-(10*rep);
}

void mouseClicked () {
  saveFrame("line-######.png");
}