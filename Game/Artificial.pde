// add use ranged to attack slower enemies
public class Artificial {
  Unit [][] ary = new Unit [8][100];
  Unit [][] eary = new Unit [8][100];
  Unit [] choices = new Unit [10]; 
  Data s = new Data();

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
    setupAI(s);
    fillChoices();
    //for (int k = 0; k < choices.length; k ++){
     // println(choices[k]);
    //}
  }
  
  
  public void setupAI(Data n){
     if (n.getUnits() < 8) {
          n.setName("Mage");
          n.setSpeed(3);
          n.setArmour(10);
          n.setRange(100);
          n.setDamages(125);
          n.setIsMelee(false);
          n.setSpawnTime(300);
          n.setUnits(n.getUnits()+1);
          n.setName("Mounted Spearman");
          n.setSpeed(6);
          n.setArmour(100);
          n.setRange(130);
          n.setDamages(20);
          n.setIsMelee(true);
          n.setSpawnTime(500);
          n.setUnits(n.getUnits()+1);
          n.setName("Halberdier");
          n.setSpeed(2);
          n.setArmour(40);
          n.setRange(125);
          n.setDamages(40);
          n.setIsMelee(true);
          n.setSpawnTime(180);
          n.setUnits(n.getUnits()+1);
          n.setName("Mounted Halberdier");
          n.setSpeed(8);
          n.setArmour(45);
          n.setRange(130);
          n.setDamages(40);
          n.setIsMelee(true);
          n.setSpawnTime(450);
          n.setUnits(n.getUnits()+1);
          n.setName("Longswordsman");
          n.setSpeed(3);
          n.setArmour(100);
          n.setRange(100);
          n.setDamages(60);
          n.setIsMelee(true);
          n.setSpawnTime(380);
          n.setUnits(n.getUnits()+1);
          n.setName("Axeman");
          n.setSpeed(5);
          n.setArmour(80);
          n.setRange(110);
          n.setDamages(45);
          n.setIsMelee(true);
          n.setSpawnTime(250);
          n.setUnits(n.getUnits()+1);
          n.setName("Scout");
          n.setSpeed(10);
          n.setArmour(10);
          n.setRange(60);
          n.setDamages(10);
          n.setIsMelee(true);
          n.setSpawnTime(170);
          n.setUnits(n.getUnits()+1);
     }
  }
  
  public void fillChoices(){
    for (int d = 0; d < 10; d ++){
    if (s.getIsMelee(d)) {
      choices[d] = new Melee(700, 420, s.getSpeed(d), s.getArmour(d), 
        s.getRange(d), s.getDamage(d), s.getRace(), s.getName(d), false, 0);
    } else {
      choices[d] = new Range(700, 420, s.getSpeed(d), s.getArmour(d), 
        s.getRange(d), s.getDamage(d), s.getRace(), s.getName(d), false, 0);
      }
    }
  }


  public int evalStrLane(int i, Unit [][] array) {
    int ret = 0;
    for (int n = 0; n < array[i].length; n ++) {
      if (array[i][n] instanceof Unit) {
        ret += array[i][n].getDamage();
      }
    }
    return ret;
  }

  public int evalRngLane(int i, Unit [][] array) {
    int ret = 0;
    for (int n = 0; n < array[i].length; n ++) {
      if (array[i][n] instanceof Unit) {
        ret += array[i][n].getRange();
      }
    }
    return ret;
  }

  public int evalNumbLane(int i, Unit [][] array) {
    int ret = 0;
    for (int n = 0; n < array[i].length; n ++) {
      if (array[i][n] != null && array[i][n] instanceof Unit) {
        ret ++;
      }
    }
    return ret;
  }

  public int evalHealthLane(int i, Unit[][] array) {
    int ret = 0;
    for (int n = 0; n < array[i].length; n ++) {
      if (array[i][n] instanceof Unit) {
        ret += array[i][n].getArmour();
      }
    }
    return ret;
  }

  public int evalSpdLane(int i, Unit[][] array) {
    int ret = 0;
    for (int n = 0; n < array[i].length; n ++) {
      if (array[i][n] instanceof Unit) {
        ret += array[i][n].getSpeed();
      }
    }
    return ret;
  }






  public int minUnit() {
    Unit[][]jacob = ary;
    float val = 0;
    int ret = 0;
    for (int i=0; i<jacob.length; i++) {
      for (int k=0; k<jacob[i].length; k++) {
        if (jacob[i][k]!=null && jacob[i][k].getXcor() >= val) {
          val = jacob[i][k].getXcor();
          ret = i;
        }
      }
    }
    return ret;
  }



  public Unit[] minLane(int i) {
    Unit[][]jacob = ary;
    float val = 0;
    Unit [] ret = new Unit[1];
    for (int k=0; k<jacob[i].length; k++) {
      if (jacob[i][k]!=null && jacob[i][k].getXcor() >= val) {
        val = jacob[i][k].getXcor();
        ret[0] = jacob[i][k];
      }
    }
    return ret;
  }




  public int maxSpd() {
    int max = 0;
    int lane = 0;
    for (int i = 0; i < 8; i ++) {
      int c = evalSpdLane(i, ary);
      if (c > max) {
        lane = i;
      }
    }
    return lane;
  }

  public int maxHp() {
    int max = 0;
    int lane = 0;
    for (int i = 0; i < 8; i ++) {
      int c = evalHealthLane(i, ary);
      if (c > max) {
        lane = i;
      }
    }
    return lane;
  }

  public int maxNumb() {
    int max = 0;
    int lane = 0;
    for (int i = 0; i < 8; i ++) {
      int c = evalNumbLane(i, ary);
      if (c > max) {
        lane = i;
      }
    }
    return lane;
  }

  public int maxStr() {
    int max = 0;
    int lane = 0;
    for (int i = 0; i < 8; i ++) {
      int c = evalStrLane(i, ary);
      if (c > max) {
        lane = i;
      }
    }
    return lane;
  }
  public int maxRng() {
    int max = 0;
    int lane = 0;
    for (int i = 0; i < 8; i ++) {
      int c = evalRngLane(i, ary);
      if (c > max) {
        lane = i;
      }
    }
    return lane;
  }


  public int tally() {
    int [] scores = new int[8];
    scores [maxSpd()] ++;
    scores [maxHp()] ++;
    scores [maxNumb()] ++;
    scores [maxStr()] ++;
    scores [maxRng()] ++;
    int max = 0;
    int ret = 0;
    for (int i = 0; i < scores.length; i ++) {
      if (scores [i] > max) {
        max = scores[i];
        ret = i;
      }
    }
    return ret;
  }

  public int altSel() {
    return (int)(Math.random() * 8);
  }

  public int chooseLane() {
    if (Math.random() * 100 < 33) {
      if (evalNumbLane(minUnit(), eary) < 1 && minLane(minUnit())[0] != null) {
        return minUnit();
      }
    }
    if (evalNumbLane(tally(), eary) < 2 && !playerHack()) {
      return tally();
    } else { 
      return altSel();
    }
  }

  //minUnit()  

  public boolean playerHack() {
    int sum = 0;
    int [] num = new int[8];
    for (int i = 0; i < 8; i ++) {
      int c = evalNumbLane(i, ary);
      num[i] = c;
    }
    for (int k = 0; k < num.length; k ++) {
      if (num[k] == 0) {
        sum ++;
      }
    }
    return sum == 7;
  }
  

  
  public int maxStrChoice() {
    int ret = 0;
    int max = 0;
    for (int n = 0; n < choices.length; n ++) {
      if (choices[n].getDamage() > max ) {
        max = choices[n].getDamage();
        ret = n;
      }
    }
    return ret;
  }
  
  public boolean isFar(){
    Unit [] dat = minLane(chooseLane());
    if(dat[0] instanceof Unit){
    if (dat[0].getXcor() < 650){
      return true;
    }
    }
    return false;
  }
  

  public int maxRngChoice() {
    int ret = 0;
    int max = 0;
    for (int n = 1; n < choices.length; n ++) {
      if (choices[n].getRange() > max ) {
        max = choices[n].getRange();
        ret = n;
      }
    }
    return ret;
  }

   public int maxHpChoice() {
    int ret = 0;
    int max = 0;
    for (int n = 0; n < choices.length; n ++) {
      if (choices[n].getArmour() > max ) {
        max = choices[n].getArmour();
        ret = n;
      }
    }
    return ret;
  }

   public int maxSpdChoice() {
    int ret = 0;
    int max = 0;
    for (int n = 0; n < choices.length; n ++) {
      if (choices[n].getSpeed() > max ) {
        max = choices[n].getSpeed();
        ret = n;
      }
    }
    return ret;
  }
  
  
  
  
  
  
  public int choose1(){
     Unit [] dat = minLane(chooseLane());
     if(dat[0] != null){
     if(dat[0].getName().equals("Spearman")){
       return 0;
     }
     if(dat[0].getName().equals("Swordsman")){
       return 1;
     }
     if(dat[0].getName().equals("Archer")){
       return 2;
     }
     if(dat[0].getName().equals("Mage")){
       return 3;
     }
     if(dat[0].getName().equals("Mounted Spearman")){
       return 4;
     }
     if(dat[0].getName().equals("Halberdier")){
       return 5;
     }
     if(dat[0].getName().equals("Mounted Halberdier")){
       return 6;
     }
     if(dat[0].getName().equals("Longswordsman")){
       return 7;
     }
     if(dat[0].getName().equals("Axeman")){
       return 8;
     }
     if(dat[0].getName().equals("Scout")){
       return 9;
     }
     }
     return (int)(Math.random() * 10);
     
  }
  
  
  
  public int choose2(){
    if (evalStrLane(chooseLane(), ary) / 5   > evalSpdLane(chooseLane(), ary)){
      return maxStrChoice();
    }
   if((Math.random() * 2) < 1){
     return (int)(Math.random() * 3);
   }
   else{return (int)(Math.random() * 4) + 4;}
    
  }
  
  
  public int choose3(){
    if (evalStrLane(chooseLane(), ary) / 5   < evalSpdLane(chooseLane(), ary)){
      return maxSpdChoice();
    }
     return (int)(Math.random() * 7);
    
  }
  
   public int choose4(){
    if (evalHealthLane(chooseLane(), ary) > 200){
      return maxHpChoice();
    }
     return (int)(Math.random() * 8);
    
  }

  
   public int choose5(){
     println(maxRngChoice());
    if (isFar()){
      return maxRngChoice();
    }
     return (int)(Math.random() * 8);
    
  }


  
 public int selClass(){
   int dec = (int)(Math.random() * 100);
   if (dec < 60){
     return choose1();
   }
   if (dec >= 60 && dec < 70){
     return choose2();
   }
   if (dec >= 70 && dec < 80){
     return choose3();
   }
   if (dec >= 80 && dec < 90){
     return choose4();
   }
   if (dec >= 90){
     return choose5();
   }
   return (int)(Math.random() * 8);
 }
   
     
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  



  /*public int selClass() {
    int lane = chooseLane();
    if ((int) (Math.random() * 100) < 33) {
      return (int) (Math.random() * 3);
    } else {
      //if ((int)(Math.random() * 100) < 50){
      Unit [] dat = minLane(lane);
      //println(dat[0]);
      if (dat[0] instanceof Range) {
        if (Math.random() * 100 < 66) {
          return (int) (Math.random() * 2);
        } else {
          return 2;
        }
      }
      if (dat[0] instanceof Melee) {
        if (Math.random() * 100 < 66) {
          return 2;
        } else {
          if (evalStrLane(lane, ary) / 5 > evalSpdLane(lane, ary)) {
            if ((Math.random() * 100) < 66) {
              return 0;
            } else {
              return 1;
            }
          } else {
            if (evalStrLane(lane, ary) / 5 < evalSpdLane(lane, ary)) {
              if ((Math.random() * 100) < 66) {
                return 1;
              } else {
                return 0;
              }
            }
          }
        }
      }
    }
    //}
    return (int)(Math.random() * 3);
    
  }*/
}