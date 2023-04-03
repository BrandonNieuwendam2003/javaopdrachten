int cx, cy;

float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

void setup(){
  size(640, 360);
  stroke(255);
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius  * 0.50;
  clockDiameter = radius * 1.8;
  
  //met de code hier boven zet ik de secondes, minuten en uren
  cx = width / 2;
  cy = height / 2;
}
// code voor de plaats van de klok

void draw(){
 background(222);
 //achtergrond van de klok
 fill(80);
 noStroke();
 ellipse(cx, cy, clockDiameter, clockDiameter);
 //form van de klok en de plekken van de sconden en minuten in de cikel
 //noStroke haalt borders weg 
 
 // haal HALF_PI weg om ze bovenaan te laten beginnen;
 // en zorgt ervoor dat het start om 3 uur
 float s = map(second(), 0, 60, 0, TWO_PI) -  HALF_PI;
 float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;
 float u = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
//norm() wordt gebruikt om seconden en minuten te vertalen naar het decimale systeem. 
//bijv: Als je 1 uur en 30 minuten hebt kun je zeggen: Dit is 1,5 uur.
//TWO_PI en HALF_PI werken samen met cos/sin om een cirkel te maken 

  //code voor de wijzers van de klok 
  stroke(255);
  strokeWeight(1);
  background(255,0,0);
  stroke(0,0,0);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(4);
  line(cx, cy, cx + cos(u) * hoursRadius, cy + sin(u) * hoursRadius);
 // (functie sin/cos) effect de 360 grade van de klok
 
 
 //de code voor de minten van de klok 
 strokeWeight(2);
 beginShape(POINTS);
 for (int a= 0; a < 360; a+=6) {
     float angle = radians(a);
     float x = cx + cos(angle) * secondsRadius; 
     float y = cy + sin(angle) * secondsRadius;
     vertex(x, y);
     // vertex wordt gebruikt om de hoekpunt plekken op te geven voor punten, lijnen, driehoeken, quads en polygonen. wordt gebruikt bij  (beginShape() en endShape())
     //beginShape() begint met het opnemen van hoekpunten voor een vorm en endShape() stopt met opnemen.
     //De waarde van de parameter vertelt welke typen vormen moeten worden gemaakt van de meegeleverde hoekpunten
     //zonder een modes kiest de vorm een random hoek
 }
 endShape();
 }
 
