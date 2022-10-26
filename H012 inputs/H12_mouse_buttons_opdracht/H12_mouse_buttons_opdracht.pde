void setup(){
  size(700,700);
  background(220,200,20);
  noStroke();
}


void draw(){
  
}

void mouseMoved(){
    int c =  floor(random(256));
    int x =  floor(random(256));
    int t =  floor(random(256)); 

  fill(c,x,t);
rect(mouseX,mouseY,20,20);
}
