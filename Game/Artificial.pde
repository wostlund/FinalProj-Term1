public class Artificial{
  Unit [][] retAry = new Unit [8] [1];
  Unit [][] ary = new Unit [8][100];
  Artificial(Unit [][] j){
    for(int i = 0; i < j.length; i ++){
      for(int k = 0; k < j[i].length; k ++){
          ary[i][k] = j[i][k];
      }
    }
  }
  
  
  public int [] viewField(){
    int [] lane = new int [8];
    for(int i = 0; i < ary.length; i ++){
      for(int k = 0; k < ary[i].length; k ++){
        if(ary[i][k] instanceof Unit){
          lane[i] += 1;
        }
      }
    }
    
    return lane; 
  }
  
  
}
    