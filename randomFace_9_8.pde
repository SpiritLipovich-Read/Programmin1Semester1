void setup () {
  size(displayWidth, displayHeight);
  frameRate(1);
  
}

void draw () {
  background(255);
  //head
  fill(random(240, 255 ), random(240, 255), random(255));
  ellipse(1000, 500, random(400, 500), random(400, 500));
  
  //eyes
  fill(255);
  ellipse(random(900,930),random(400, 430), random(50, 90), random(50, 90));
  ellipse(random(1040, 1070), random(400, 430), random(40, 70), random(40, 70));
  fill(0);
  ellipse(random(905, 915), random(405, 415), random(5,15), random(5, 15));
  ellipse(random(1045, 1055), random(405, 415), random(5,15), random(5, 15));
  
  //mouth
  fill(255);
  triangle(random(870, 900), random(510,540), random(980, 1200), random(520, 550), random(1000, 1025), random(645, 660));
  
  //nose
  line(random(998,1002), random(290,355), random(998,1002), random(490, 510));
}
