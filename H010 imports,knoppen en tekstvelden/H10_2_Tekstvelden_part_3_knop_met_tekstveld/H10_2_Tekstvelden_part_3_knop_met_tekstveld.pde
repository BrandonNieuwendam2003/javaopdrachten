import controlP5.*;

ControlP5 cp;

Textfield TF1;
Button knop1;

void setup(){
  size(500,500);
  
  
  cp = new ControlP5(this);
  
 TF1 = cp.addTextfield("TextField1").setText("yo").setSize(200,50).setPosition(200,200).setCaptionLabel("");
 knop1 = cp.addButton("Knop1").setCaptionLabel("Tadaa");
 
}

void draw(){
  background(0,0,0);
}

void Knop1(){
      println("Dit staat er in het veld:" + TF1.getText());
}
