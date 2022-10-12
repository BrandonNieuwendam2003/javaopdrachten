int zoekNummer =9;
boolean gevonden = false;
int index  = 0;
int positie = 0;
int[] Getallen = {10,8,977,66,99,11,12,33,9};

void setup(){
  
 for(int i = 0; i < Getallen. length; i++){
   if(Getallen[i] == zoekNummer){
     gevonden = true;
     index = i;
     positie = i + 1;
   
   }
 }
 if(gevonden){
 println("Het getal is gevonden op index " + index + "en dit is positie" );
 }else{
   println("Niet gevonden");
 }
}
