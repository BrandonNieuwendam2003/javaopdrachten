int cb, cn;
int W, H, G;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

void setup(){
  size(540, 360);
  stroke(255);
  
  int radius = min(width, height) / 4;
  secondsRadius = 7 * 0.72;
  minutesRadius = 7 * 0.60;
  hoursRadius = radius  * 0.50;
  clockDiameter = radius * 1.8;
  
  cb = width / 2;
  cn = height / 2;
}

//met de code hier boven zet ik de secondes, minuten en uren


void draw(){
 background(0);
 
 //achtergrond van de klok
 fill(90);
 noStroke();
 ellipse(cb, cn, clockDiameter, clockDiameter);
 
 
 // haal HALF_PI weg om ze bovenaan te laten beginnen;
 // en zorgt ervoor dat het start om 3 uur
 float b = map(second(), 0, 60, 0, TWO_PI) -  HALF_PI;
 float n = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;
 float j = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;



  //code voor de wijzers van de klok 
  stroke(255);
  strokeWeight(2);
  line(cb, cn, cb + cos(W) * secondsRadius, cn + sin(W) * secondsRadius);
  strokeWeight(3);
  line(cb, cn, cb + cos(H) * minutesRadius, cn + sin(H) * minutesRadius);
  strokeWeight(4);
  line(cb, cn, cb + cos(G) * hoursRadius, cn + sin(G) * hoursRadius);
 // vragen aan Rick wat hier fout gaat^
 
 
 //de code voor de minten van de klok 
 strokeWeight(2);
 beginShape(POINTS);
 for (int a= 0; a < 360; a+=6) {
     float angle = radians(a);
     float x = cb + cos(angle) * secondsRadius; 
     float y = cn + sin(angle) * secondsRadius;
     vertex(x, y);
     // vertex wordt gebruikt om de hoekpunt plekken op te geven voor punten, lijnen, driehoeken, quads en polygonen. wordt gebruikt bij  (beginShape() en endShape())
     
 }
 endShape();
 }
 
  
 
  
  
  
  
  
