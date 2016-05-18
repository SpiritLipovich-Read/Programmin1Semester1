class Lines {

  float xpos;
  float ypos;
  float strokeW;
  float lineLength;

  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }
  // strokeW = random(1, 2);
  //lineLength = random(1, 50);
  //stroke(random(100, 255));

  //strokeW = random(1, 4);
  //lineLength = random(2, 20);
  //stroke(random(100), random(100), random(200));
  if (xpos > width || xpos < 0 || ypos > height || ypos <0) {
    xpos = random(width);
    ypos = random(width);
  } else {
    if (random (100)>70) {
      strokeWeight(strokeW);
      moveLeft(xpos, ypos, lineLength);
    } else if (random(100)>65) {
      strokeWeight(strokeW);
      moveUp(xpos, ypos, lineLength);
    } else if (random(100)>55) {
      strokeWeight(strokeW);
      moveDown(xpos, ypos, lineLength);
    } else {
      strokeWeight(strokeW);
      moveRight(xpos, ypos, lineLength);
    }
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i ++) {
      point(startX+i, startY);
      xpos = startX + i;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i ++) {
      point(startX-i, startY);
      xpos = startX - i;
    }
  }
  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i ++) {
      point(startX, startY-1);
      ypos = startY - i;
    }
  }
  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i ++) {
      point(startX, startY+i);
      ypos = startY + i;
    }
  }
}