
void setup () {
  size(500, 500);
  background(255);
}

void draw () {
  zoog(int(random(width)), int(random(height))); 
  goodAlien(mouseX, mouseY);
  
  if (keyPressed == true) {
    background(255);
   
  }
  fill(200, 0, 0);
  text("the Aliens are INVADING!!!", 150, 300);
  text("press any key to refresh page", 50, 50);
  text("You are the Good Alien, fight those baddies!", 10, 100);
  textSize(20);
  
  frameRate(40);
}

void zoog(int x, int y) {
  
  //center mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //Zoog body
  stroke(0);
  fill(100, 5, 100);
  rect(x,y+50,20,100);
  
  //Zoog head
  stroke(0);
  fill(0, 140, 0);
  ellipse(x,y,60,60);
  
  //Zoog eyes
  fill(0);
  ellipse(x-20,y-2,16,32);
  ellipse(x+20,y-2,16,32);
  
  //Zoog legs
  stroke(0);
  line(x-10,y+100,x-20,y+110);
  line(x+10, y+100,x+20,y+110);
}

void goodAlien(int x, int y) {
  //center mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //good alien body
  stroke(0);
  fill(0, 0, 200);
  rect(x,y+50,20,100);
  
  //good alien head
  stroke(0);
  fill(0);
  ellipse(x,y,60,60);
  
  //good alien eyes
  fill(255);
  ellipse(x-20,y-2,16,32);
  ellipse(x+20,y-2,16,32);
  
  //good alien legs
  stroke(0);
  line(x-10,y+100,x-20,y+110);
  line(x+10, y+100,x+20,y+110);
}
