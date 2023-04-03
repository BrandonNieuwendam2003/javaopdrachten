void settings() {
  size(int(random(427, 1281)), int(random(240, 721)));
}

void setup() {
  //width bepaald de breete van scherm
  // height de hoogte
  background(0, 255, 0);
  line(width/2, 0, width/2, height);
  fill(0, 255, 0);
  rect(0, 0, width*0.15, height);
  fill(200);
  rect(width*0.15, 0, width*0.08, height);
  fill(0);
  rect(width*0.23, 0, width*0.27, height);

  fill(0, 255, 0);
  rect(width, 0, 0-width*0.15, height);
  fill(200);
  rect(width*0.85, 0, width*-0.08, height);
  fill(0);
  rect(width*0.77, 0, width*-0.27, height);
  boom();
}

void draw() {
}




void boom() {
  fill(0,255,0);
  ellipse(width/2, height/2, 100, 100);
  ellipse(width/2, height/2, 100, 100);
  ellipse(width/2, height/2, 100, 100);
  ellipse(width/2, height/2, 100, 100);
  ellipse(width/2, height/2, 100, 100);
}
