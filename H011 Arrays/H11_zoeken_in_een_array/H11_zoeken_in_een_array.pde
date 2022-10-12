int jongste;
int oudste;
int[] leeftijden ={10,7,87,63,8,90,120,76,35,22,12,11, 80, 104, 88, 55, 44, 2};

void setup(){
 for(int i = 0; i < leeftijden. length; i++){
  if(oudste > leeftijden[i]){
    oudste = leeftijden[i];
  }
   if (jongste > leeftijden[i]){
     jongste = leeftijden[i];
   }
 }
 
 println("De jongste is " + jongste);
 println("De oudste is "  + oudste); 
}
