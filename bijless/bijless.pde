int count = 0;

void setup() {
  frameRate(30);
  size(500, 500);
}


void draw () {
  background(0);
  count++;
  fill(255);
  text(count, width/2, height/2);
  for (int i = 0; i >= -10; i = i - 2) {
    println(i);
    if ( i == -10) {
      println("wij zijn tien");
    } else {
      println("Brandon");
    }
  }
}
