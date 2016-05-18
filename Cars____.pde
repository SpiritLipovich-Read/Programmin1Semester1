
Car[] myCars = new Car[20];
Car myCar1;


void setup() {
  size(200, 200);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color((200), random(200), random(200)), 0, random(195), random(5)); 
  
  for(int i=0; i < myCars.length; i ++) {
    myCars[i] = new Car(color(random(200), random(200), random(200)), 0, random(195), random(5)); 
  }
}

  void draw() {
  background(255);
  text("Click your mouse to take a picture!", 10, 50);
  myCar1.drive();
  myCar1.display();
 
  for(int i=0; i < myCars.length; i ++) {
    myCars[i].display();
    myCars[i].drive();
  }
}
void mouseClicked () {
  saveFrame("line-######.png");
}