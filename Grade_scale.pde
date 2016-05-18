
void setup () {
  size(110, 150);
}

void draw () {
  background(255);
  stroke(0);
  line(0, 100, width, 100);
  stroke(255, 0, 0);
  point(mouseX, 100);
  displayGrade(mouseX);
}

void displayGrade(float grade) {
  float displayGrade = random(0, 101);
  fill(0);
  textSize(7);
  if (grade >=94 && grade <=101) {
    text("Assign letter grade A" +grade, 10, 10);
  } else if (grade <=93 && grade >=89) {
    text ("Assign letter grade A-" +grade, 10, 10);
  } else if (grade <=88 && grade >=87) {
    text ("Assign letter grade B+" +grade, 10, 10);
  } else if (grade <=86 && grade >=83) {
    text ("Assign letter grade B" +grade, 10, 10);
  } else if (grade <=82 && grade >=80) {
    text ("Assign letter grade B-" +grade, 10, 10);
  } else if (grade <=79 && grade >=77) {
    text ("Assign letter grade C+" +grade, 10, 10);
  } else if (grade <=76 && grade >=73) {
    text ("Assign letter grade C" +grade, 10, 10);
  } else if (grade <=72 && grade >=70) {
    text ("Assign letter grade C-" +grade, 10, 10);
  } else if (grade <=69 && grade >=67) {
    text ("Assign letter grade D+" +grade, 10, 10);
  } else if (grade <=66 && grade >=63) {
    text ("Assign letter grade D" +grade, 10, 10);
  } else if (grade <=62 && grade >=60) {
    text ("Assign letter grade D-" +grade, 10, 10);
  } else if (grade <=59) {
    text ("Assign letter grade F" +grade, 10, 10);
  }
} 

