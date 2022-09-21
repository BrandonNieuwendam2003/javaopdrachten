size(300,300);
background(255,255,255);



for(int  x = 0; x < 9; x++){ 
   for( int y = 0; y < 9; y++){
       rect(x * 20 + 50,y * 20 + 40,20,20);
     if((x+y) % 2==0){
     fill(255);
   }else{ fill (0); 
      }
  }
}


  

  
  
