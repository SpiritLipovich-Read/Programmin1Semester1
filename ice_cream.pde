IceCream[] myIceCream = new IceCream[1];
IceCream myIceCream1;

void setup () {
  size(500, 500);
  background(255);
  myIceCream1 = new IceCream(250, 250, 200, 100, 100);
}


  void draw () {
   myIceCream1.display();
  }