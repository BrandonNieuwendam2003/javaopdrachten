int xWaarde;
int yWaarde;

void setup(){
  size(600,600);
  frameRate(40);
  xWaarde = 0;
  yWaarde = 0;
 
}


void draw(){
  background(0,0,0);
  rect(xWaarde,yWaarde, 10,10);
  
  xWaarde++;
  yWaarde+=10;
  
  if(yWaarde > height){
    yWaarde = 0;
  }
  if(xWaarde > width){
    xWaarde = 0;
  }
  
}
