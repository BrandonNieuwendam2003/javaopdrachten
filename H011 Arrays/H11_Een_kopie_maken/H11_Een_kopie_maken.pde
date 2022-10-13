int[] mijnArray = {10,9,8,7};
int[] mijnCopy;

void setup(){
for  (int i = 0; i< mijnArray. length; i++){
  mijnCopy[i] = mijnArray[i];
}

mijnCopy[2] = 5;
println(mijnArray);

}
