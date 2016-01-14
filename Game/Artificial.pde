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
  
  public Unit[] maxUnit(Unit [][] data, int lane){
    Unit[][]jacob=data;
    Unit[]ans = new Unit[1];
    Unit max = null;
      for(int k=0; k<jacob[lane].length; k++){
        max = jacob[lane][k];
        float maxx = jacob[lane][k].getXcor(); 
        if(jacob[lane][k].getXcor() > maxx){
          max = jacob[lane][k];
          maxx = jacob[lane][k].getXcor();
        }
      }
      ans[0]= max;
    return ans;
  }
  
  
 
  public int [] betterDecide(Unit [][] elane){
    int sum = 0;
    int [] fin = new int[2];
    ArrayList<Integer> empty = new ArrayList<Integer>();
    for(int i = 0; i < elane.length; i ++){
      sum = 0;
      for(int k = 0; k < elane[i].length; k++){
        if(elane[i][k] == null){
          sum ++;
        }
         if(sum == elane[i].length){
          empty.add(i);
        }
        }
      }
    
    
    
    int srow = empty.get((int)(Math.random() *empty.size()));
    Unit[] c = this.maxUnit(ary, srow);
    int sclass = 0;
    if(Math.random() * 100 <= 80){
      fin[0] = srow;
    }
    else{fin[0] = (int)(Math.random() * 8) ;}
    
    if(c[0] instanceof Melee){
      fin[1] = 0;
    }
    if(c[0] instanceof Range){
      fin[1] = 2;
    }
    else{fin[1]= 1;}
    
    
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
      return 2;
    }
    else{return 1;}
  }
        
    
    
}
  

    