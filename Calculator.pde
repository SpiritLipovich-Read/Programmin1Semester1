CalcButton[] numButtons = new CalcButton[10];
CalcButton[] opButtons = new CalcButton[6];
CalcButton[] spButtons = new CalcButton[1];

String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0;
char opValue;
boolean firstNum;

void setup() {
  size(530, 540);
  background(50, 55, 55);
  frameRate(10);

  numButtons[0] = new CalcButton(220, 215).asNumber(0, 45, 45);
  numButtons[1] = new CalcButton(165, 320).asNumber(1, 45, 45);
  numButtons[2] = new CalcButton(220, 320).asNumber(2, 45, 45);
  numButtons[3] = new CalcButton(275, 320).asNumber(3, 45, 45);
  numButtons[4] = new CalcButton(330, 320).asNumber(4, 45, 45);
  numButtons[5] = new CalcButton(165, 265).asNumber(5, 45, 45);
  numButtons[6] = new CalcButton(220, 265).asNumber(6, 45, 45);
  numButtons[7] = new CalcButton(275, 265).asNumber(7, 45, 45);
  numButtons[8] = new CalcButton(330, 265).asNumber(8, 45, 45);
  numButtons[9] = new CalcButton(165, 215).asNumber(9, 45, 45);

  opButtons[0] = new CalcButton(220, 375).asOperator("+", 45, 45);
  opButtons[1] = new CalcButton(330, 375).asOperator("-", 45, 45);
  opButtons[2] = new CalcButton(275, 375).asOperator("*", 45, 45);
  opButtons[3] = new CalcButton(330, 215).asOperator("=", 45, 45);
  opButtons[4] = new CalcButton(165, 375).asOperator("/", 45, 45);
  opButtons[5] = new CalcButton(247.5, 430).asOperator("C", 45, 45);

  spButtons[0] = new CalcButton(275, 215).asSpecial(".", 45, 45);
  

  firstNum = true;
}
void draw() {

  fill(0, 120, 100);
  strokeWeight(3);
  noStroke();
  ellipse(270, 270, 410, 450);

  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].clickButton(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].clickButton(mouseX, mouseY);
  }
  for (int i=0; i<spButtons.length; i++) {
    spButtons[i].display();
    spButtons[i].clickButton(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i ++) {
    numButtons[i].clickButton(mouseX, mouseY);
    if (numButtons[i].overBox) {
      if (firstNum) {
        //println(i + "" + inumButton.numButtonValue);
        valueToCompute += int(numButtons[i].numButtonValue);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(numButtons[i].numButtonValue);
        displayValue = valueToCompute2;
      }
    }
  }
  for (int i=0; i<opButtons.length; i ++) {
    opButtons[i].clickButton(mouseX, mouseY);
    if (opButtons[i].overBox) {
      if (opButtons[i].opButtonValue == "+") {
        if (result !=0) {
          opValue = '+';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "+";
        } else {
          opValue = '+';
          firstNum = false;
          displayValue = "+";
        }
      } else if (opButtons[i].opButtonValue == "=") {
        firstNum = true;
        performCalculation();
      } else if (opButtons[i].opButtonValue == "-") {
        if (result != 0) {
          opValue = '-';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "-";
        } else {
          opValue = '-';
          firstNum = false;
          displayValue = "-";
        }
      } else if (opButtons[i].opButtonValue == "*") {
        if (result !=0) {
          opValue = '*';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "*";
        } else {
          opValue = '*';
          firstNum = false;
          displayValue = "*";
        }
      } else if (opButtons[i].opButtonValue == "/") {
        if (result !=0) {
          opValue = '/';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "/";
        } else {
          opValue = '/';
          firstNum = false;
          displayValue = "/";
        }
      } else if (opButtons[i].opButtonValue == "C") {
        if (result !=0) {
          displayValue = "0";
          opValue = 'C';
          valueToCompute = "";
          valueToCompute2 = "";
          valueToComputeI = 0;
          valueToComputeI = 0;
          result = 0;
          firstNum = true;
        }
      }
    }
  } 
  for (int i=0; i<spButtons.length; i ++) {
    spButtons[i].clickButton(mouseX, mouseY);
    if (spButtons[i].overBox) {
      if (spButtons[i].spButtonValue == ".") {
        if (spButtons[i].overBox && firstNum == true) {
          valueToCompute += spButtons[i].spButtonValue;
          displayValue = valueToCompute;
        } else if ( spButtons[i].overBox && firstNum == false) {
          valueToCompute2 += spButtons[i].spButtonValue;
          displayValue = valueToCompute2;
        }
      }
    }
  }
}
void performCalculation() {
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);

  if (opValue == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '-') {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '*') {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '/') {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  }

  if (firstNum) {
    valueToCompute = displayValue;
  } else {
    valueToCompute = displayValue;
    valueToCompute2 = "";
  }
}
void updateDisplay() {
  fill(160, 0, 0);
  ellipse(265, 150, 320, 80);
  fill(210, 200, 0);
  textSize(25);
  text(displayValue, 125, 155);
}