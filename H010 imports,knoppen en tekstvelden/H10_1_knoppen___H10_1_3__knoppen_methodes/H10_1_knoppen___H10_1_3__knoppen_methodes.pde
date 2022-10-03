void setup(){
  size(400,400);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1")
             .setPosition(200,200)
             .setSize(200,200)
             .setCaptionLabel("hoi");

knop1.setColorForeground(color(255,0,0));
knop1.hide();
knop1.show();
knop1. setCaptionLabel("yes");
}

void draw(){
  
}
