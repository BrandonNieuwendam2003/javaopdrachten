import controlP5.*;
float Getal;
String mijnString;
ControlP5 cp;

Textfield TF1;
Button knop1;

void setup(){
  size(500,500);
  
  
  cp = new ControlP5(this);
  
 TF1 = cp.addTextfield("TextField1").setText("Type een naam").setSize(200,50).setPosition(200,200).setCaptionLabel("");
 TF1.setAutoClear(false);
 knop1 = cp.addButton("Knop1").setCaptionLabel("Welkom");
 
}

void draw(){
  background(0,0,0);
}

void Knop1(){
   mijnString = TF1.getText();
   Getal = float(mijnString);
   println(Getal);
}
