int xWaarde;
int yWaarde;

void setup(){
  size(600,600);
  frameRate(10);
  xWaarde = 0;
  yWaarde = 0;
 
}


void draw(){
  rect(xWaarde,yWaarde, 10,10);
  
  xWaarde++;
  yWaarde+=10;
  
}
