import controlP5.*;

ControlP5 cp;

Textfield TF1;

void setup(){
  size(500,500);
  
  
  cp = new ControlP5(this);
  
 TF1 = cp.addTextfield("TextField1").setText("yo").setSize(200,50).setPosition(200,200).setCaptionLabel("doei");
 TF1.hide();
 
}

void draw(){
  background(0,0,0);
}
