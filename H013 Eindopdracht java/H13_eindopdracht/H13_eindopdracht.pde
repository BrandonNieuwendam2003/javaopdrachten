int cb, cn;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

void setup(){
  size(540, 260);
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
}


  //code voor de wijzers van de klok 
  stroke(355);
  strokeWeight(2);
  line(cb, cn, cb + cos(w) * secondsRadius, cn + sin(w) * secondsRadius);
  strokeWeight(3);
  line(cb, cn, cb + cos(H) * minutesRadius,
  
  
  
  
  
  
  
