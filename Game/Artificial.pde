public class Artificial {
  Unit [][] ary = new Unit [8][100];
  Unit [][] eary = new Unit [8][100];
  

  Artificial(Unit [][] j, Unit [][] e ) {
    for (int i = 0; i < j.length; i ++) {
      for (int k = 0; k < j[i].length; k ++) {
        ary[i][k] = j[i][k];
      }
    }
    
     for (int p = 0; p < e.length; p ++) {
      for (int a = 0; a < e[p].length; a ++) {
        eary[p][a] = e[p][a];
      }
    }
  }


  public int [] viewField() {
    int [] lane = new int [8];
    for (int i = 0; i < ary.length; i ++) {
      for (int k = 0; k < ary[i].length; k ++) {
        if (ary[i][k] instanceof Unit) {
          lane[i] += 1;
        }
      }
    }

    for (int f = 0; f < lane.length - 1; f ++) {
      if (lane [f] == 0) {
        lane[7] = f;
      }
    }

    return lane;
  }

  public int retMaxLane(int [] name) {
    int m = name[0];
    int lane = 0;
    for (int i = 0; i < name.length -1; i ++) {
      if (name[i] >= m) {
        lane = i;
        m = name[i];
      }
    }
    return lane;
  }
  
  public boolean isEmpty(){
    int ctr = 0;
    for (int i = 0; i < ary.length; i++){
      for (int k = 0; k < ary[i].length; k ++){
        if (ary[i][k] == null){
          ctr ++;}
      }
    }
    return ctr == (ary.length * ary[0].length);
  }
        



  public int decide() {
    int [] name  = viewField(); 
    int lane = retMaxLane(viewField());
    int fin = 0;
    if (Math.random() * 100 <= 80) {
      fin = lane;
    } else {
      fin = (int) (Math.random() * 8);
    }
    return fin;
  }

  public Unit[] maxUnit(Unit [][] data, int lane) { // error here. know that it is in loop but can't find issue
    Unit[][]jacob=data;
    Unit[]ans = new Unit[2];
    Unit max = null;
    float maxx =0;
   //println(jacob.length);
    for (int w=0; w<jacob[lane].length; w ++) {
      //println(lane);
      //println(w);
      if (jacob[lane][w] != null){
       max = jacob[lane][w];
       maxx = jacob[lane][w].getXcor();
      if (jacob[lane][w].getXcor() > maxx) {
        max = jacob[lane][w];
        maxx = jacob[lane][w].getXcor();
      } 
      }
    }
    ans[0]= max;
    return ans;
  }
  

  public int [] betterDecide(Unit [][] elane) {
    int sum = 1;
    int [] fin = new int[2];
    ArrayList<Integer> empty = new ArrayList<Integer>();
    for (int i = 0; i < elane.length; i ++) {
      if (sum == 0) {
          empty.add(i - 1);
        }
      sum = 0;
      for (int k = 0; k < elane[i].length; k++) {
        if (elane[i][k] != null) {
          sum ++;
        }
      
      }
    }


    int choser = (int)(Math.random() * empty.size());
    int srow = empty.get(choser);
    if (Math.random() * 100 < 90){ 
    Unit[] c = this.maxUnit(ary, srow);
    if (Math.random() * 100 <= 80) {
      fin[0] = srow;
    } else {
      fin[0] = (int)(Math.random() * 8) ;
    }
      println(c[0]);
    if (c[0] instanceof Melee) {
      fin[1] = 0;
    }
    if (c[0] instanceof Range) {
      fin[1] = 2;
    } else {
      fin[1]= 1;
    }
    }
    else{fin[0] = (int)(Math.random() * 7);
         fin[1] = (int) (Math.random() * 3);
    }


    return fin;
  }



  public int pickClass() {
    int n = decide();
    int mel = 0;
    int range = 0;
    for (int i = 0; i < ary[n].length; i ++) {
      if (ary[n][i] instanceof Melee) {
        mel ++;
      }
      if (ary[n][i] instanceof Range) {
        range ++;
      }
    }
     if (Math.random() * 100 < 15 || (mel == 0 && range == 0) ){
       int k = (int)(Math.random() * 3);
       println(k);
       return k;
     }
     println(mel);
     println(range);
    if (mel > range) {
      return 0;
    }
    if (mel < range) {
      return 2;
    } else {
      return 1;
    }
     
      
    }
    
    
    
    
    
    
    public int evalStrLane(int i, Unit [][] array){
      int ret = 0;
      for(int n = 0; n < array[i].length; n ++){
        if (array[i][n] instanceof Unit){
          ret += array[i][n].getDamage();
        }
      }
      return ret;
    }
    
    public int evalRngLane(int i, Unit [][] array){
       int ret = 0;
      for(int n = 0; n < array[i].length; n ++){
        if (array[i][n] instanceof Unit){
          ret += array[i][n].getRange();
        }
      }
      return ret;
           
    }
    
    public int evalNumbLane(int i, Unit [][] array){
       int ret = 0;
      for(int n = 0; n < array[i].length; n ++){
        if (array[i][n] != null && array[i][n] instanceof Unit){
          ret ++;
        }
      }
      return ret;
    }
    
    public int evalHealthLane(int i, Unit[][] array){
       int ret = 0;
      for(int n = 0; n < array[i].length; n ++){
        if (array[i][n] instanceof Unit){
          ret += array[i][n].getArmour();
        }
      }
      return ret;
    }
    
    public int evalSpdLane(int i, Unit[][] array){
      int ret = 0;
      for(int n = 0; n < array[i].length; n ++){
        if (array[i][n] instanceof Unit){
          ret += array[i][n].getSpeed();
        }
      }
      return ret;
    }
    
    public int minUnit() {
    Unit[][]jacob = ary;
    float val = 10000000;
    int ret = 0;
    for (int i=0; i<jacob.length; i++) {
      for (int k=0; k<jacob[i].length; k++) {
        if (jacob[i][k]!=null && jacob[i][k].getXcor() <= val) {
          ret = i;
        }
      }
    }
    return ret;
  }
      
    
    
    
    public int maxSpd(){
      int max = 0;
      int lane = 0;
      for (int i = 0; i < 8; i ++){
        int c = evalSpdLane(i, ary);
        if (c > max){
          lane = i;
        }
      }
      return lane;
    }
    
    public int maxHp(){
      int max = 0;
      int lane = 0;
      for (int i = 0; i < 8; i ++){
        int c = evalHealthLane(i, ary);
        if (c > max){
          lane = i;
        }
      }
      return lane;
    }
    
    public int maxNumb(){
      int max = 0;
      int lane = 0;
      for (int i = 0; i < 8; i ++){
        int c = evalNumbLane(i, ary);
        if (c > max){
          lane = i;
        }
      }
      return lane;
    }
    
    public int maxStr(){
      int max = 0;
      int lane = 0;
      for (int i = 0; i < 8; i ++){
        int c = evalStrLane(i, ary);
        if (c > max){
          lane = i;
        }
      }
      return lane;
    }
    public int maxRng(){
      int max = 0;
      int lane = 0;
      for (int i = 0; i < 8; i ++){
        int c = evalRngLane(i, ary);
        if (c > max){
          lane = i;
        }
      }
      return lane;
    }
    
    
    public int tally(){
      int [] scores = new int[8];
      scores [maxSpd()] ++;
      scores [maxHp()] ++;
      scores [maxNumb()] ++;
      scores [maxStr()] ++;
      scores [maxRng()] ++;
      int max = 0;
      int ret = 0;
      for(int i = 0; i < scores.length; i ++){
        if(scores [i] > max){
          max = scores[i];
          ret = i;
        }
      }
      return ret; 
    }
    
    public int altSel(){
      return (int)(Math.random() * 8);
    }
    
    public int chooseLane(){
      if (Math.random() * 100 < 33){
        return minUnit();
      }
      else{
        if (evalNumbLane(tally() , eary) < 2){
        return tally();
      }
      
        else{ return altSel();}
      }
    }
    //minUnit()  
    
    public int selClass(){
      int lane =  altSel();
      return 10000000;}
      
      
    
    
    
    
    
    
    
    
    //public int evalMine(){
      //return 0;
    //}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}