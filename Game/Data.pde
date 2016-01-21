public class Data {
  
  public Data(){
    race = "Men";
    units = 3;
    names.add("Spearman");
    names.add("Swordsman");
    names.add("Archer");
    isMelee.add(true);
    isMelee.add(true);
    isMelee.add(false);
    spawnTimes.add(160);
    spawnTimes.add(240);
    spawnTimes.add(200);    
    speeds.add(5);
    speeds.add(3);
    speeds.add(3);
    armour.add(40);
    armour.add(100);
    armour.add(100);
    ranges.add(130);
    ranges.add(100);
    ranges.add(100);
    damages.add(20);
    damages.add(35);
    damages.add(35);
  }
  
  private int units;
  private String race;
  private ArrayList<String>names = new ArrayList<String>(8);
  private ArrayList<Boolean>isMelee = new ArrayList<Boolean>(8);
  private ArrayList<Integer>spawnTimes = new ArrayList<Integer>(8);
  private ArrayList<Integer>speeds = new ArrayList<Integer>(8);
  private ArrayList<Integer>armour = new ArrayList<Integer>(8);
  private ArrayList<Integer>ranges = new ArrayList<Integer>(8);
  private ArrayList<Integer>damages = new ArrayList<Integer>(8);

  public void setRace(String n) {
    this.race = n;
  }
  
  public void setUnits(int n){
    this.units = n; 
  }
  
  public int getUnits(){
    return this.units; 
  }
  
  public void setName(String n) {
    names.add(n);
  }

  public void setSpeed(int n) {
    speeds.add(n);
  }

  public void setArmour(int n) {
    armour.add(n);
  }

  public void setRange(int n) {
    ranges.add(n);
  }

  public void setDamages(int n) {
    damages.add(n);
  }
  
  public void setType(boolean n){
    isMelee.add(n); 
  }
  
  public boolean setType(int choice){
    return isMelee.get(choice); 
  }

  public String getName(int choice) {
    return names.get(choice);
  }

  public int getSpeed(int choice) {
    return speeds.get(choice);
  }

  public int getArmour(int choice) {
    return armour.get(choice);
  }

  public int getRange(int choice) {
    return ranges.get(choice);
  }

  public int getDamage(int choice) {
    return damages.get(choice);
  }

  public String getRace() {
    return this.race;
  }
  
  public int getSpawnTime(int n){
   return spawnTimes.get(n); 
  }
  
  public void setSpawnTime(int n){
    spawnTimes.add(n);
  }
  
  public void setIsMelee(boolean n){
    isMelee.add(n); 
  }
  
  public boolean getIsMelee(int choice){
     return isMelee.get(choice); 
  }
}