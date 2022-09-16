int xWaarde = 10;
int yWaarde = 10;

size (600,600);
background(355,355,355);

for(int b = 0; b < 10; b++){
  for(int c = 0; c < 10; c++){
  rect(xWaarde, yWaarde,5,5); 
 yWaarde += 15;
}
yWaarde = 50;
xWaarde = 15;
}
