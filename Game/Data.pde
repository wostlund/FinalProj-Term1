public class Data {
  
  public Data(){
    names.add("Spearman");
    names.add("Swordsman");
    names.add("Archer");
    isMelee.add(true);
    isMelee.add(true);
    isMelee.add(false);
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
  
  public void setName(String n, int choice) {
    names.set(choice, n);
  }

  public void setSpeed(int n, int choice) {
    speeds.set(choice, n);
  }

  public void setArmour(int n, int choice) {
    armour.set(choice, n);
  }

  public void setRange(int n, int choice) {
    ranges.set(choice, n);
  }

  public void setDamages(int n, int choice) {
    damages.set(choice, n);
  }
  
  public void setType(boolean n, int choice){
    isMelee.set(choice, n); 
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
}