int mijnGetal;

void setup(){
  size(600,600);
  mijnGetal = 6;
  
  noLoop();
  loop();
}

void draw(){
 mijnGetal++;
 println(mijnGetal);
}
