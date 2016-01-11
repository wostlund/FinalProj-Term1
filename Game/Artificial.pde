public class Artificial{
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
    
    for(int f = 0; f < lane.length - 1; f ++){
      if(lane [f] == 0){
        lane[7] = f;
      }
    }
    
    return lane; 
  }
  
  public int retMaxLane(int [] name){
    int m = name[0];
    int lane = 0;
    for(int i = 0; i < name.length -1; i ++){
      if(name[i] >= m){
        lane = i;
        m = name[i];
      }
    }
    return lane;
  }
      
    
  
  public int decide(){
    int [] name  = viewField(); 
    int lane = retMaxLane(viewField());
    int fin = 0;
    if(Math.random() * 100 <= 80){
      fin = lane;
    }
    else{fin = name[7];}
    return fin;
    
  }
  
  public int pickClass(){
    int n = decide();
    int mel = 0;
    int range = 0;
    for(int i = 0; i < ary[n].length; i ++){
      if(ary[n][i] instanceof Melee){
        mel ++;
      }
      if(ary[n][i] instanceof Range){
        range ++;
      }
    }
    if(mel > range){
      return 0;
    }
    if(mel < range){
      return 3;
    }
    else{return 2;}
  }
        
    
    
}
    
 
  
  

    