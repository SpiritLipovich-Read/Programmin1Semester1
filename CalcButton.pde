class CalcButton {
  boolean isNumber;
  boolean isSpecial;
  float numButtonValue;
  String opButtonValue;
  String spButtonValue;
  float xpos;
  float ypos;
  int boxSize = 45;
  int buttonW;
  int buttonH;
  boolean overBox = false;

  CalcButton(float tempXpos, float tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
  }

  CalcButton asNumber(float tempNumButtonValue, int tempW, int tempH) {
    isNumber = true;
    numButtonValue = tempNumButtonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }

  CalcButton asOperator(String tempOpButtonValue, int tempW, int tempH) {
    opButtonValue = tempOpButtonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }

  CalcButton asSpecial(String buttonValue, int tempW, int tempH) {
    isSpecial = true;
    spButtonValue = buttonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }

  void display() {
    if (isNumber) {
      fill(255);
      noStroke();
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0, 130, 135);
      textSize(24);
      text(int(numButtonValue), xpos+15, ypos+30);
    } else if (isSpecial) {
      fill(255);
      noStroke();
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0, 130, 135);
      textSize(24);
      text(spButtonValue, xpos+15, ypos+30);
    } else {
      fill(255);
      noStroke();
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0, 130, 135);
      textSize(24);
      text (opButtonValue, xpos+15, ypos+30);
    }
  }

  void clickButton(int x, int y) {
    overBox = x > xpos && x < xpos+buttonW && y > ypos && y < ypos+buttonH;
  }
}