String zoekNaam = "Jan";
Boolean gevonden= false;
String[] namen = {"JAson","Nick","Franklin", "Kalep", "Brandon", "Jan"};

void setup(){
 for(int i = 0; i < namen. length; i++){
   if(zoekNaam == namen[i]){
     gevonden = true;
   }
}
if(gevonden){
  println("ja de naam " + zoekNaam + " bestaat!");
}else{
  println("Helaas de naam"+ zoekNaam + "ken ik niet!");
}
}
