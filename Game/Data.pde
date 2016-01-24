public class Data {
private String [] ra = {"Men","Orcs of the North", "Orcs of the South", "Mountain Trolls", "Forest Elves", "Men of the West", "Night Elves"}; 
  public Data() {
    race = ra[(int)(Math.random() * ra.length)]; 
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
    damages.add(10);
    money = 3600;
    spearUpgrade = 0;
    swordUpgrade = 0;
    speedUpgrade = 0;
    axeUpgrade = 0;
    halberdUpgrade = 0;
    armourUpgrade = 0;
    for(int i=0; i<8; i++){
      show[i] = true; 
    }
  }

  private int money;
  private int spearUpgrade;
  private int swordUpgrade;
  private int speedUpgrade;
  private int axeUpgrade;
  private int halberdUpgrade;
  private int armourUpgrade;
  private int rangeUpgrade;
  private int units;
  private String race;
  private ArrayList<String>names = new ArrayList<String>(8);
  private ArrayList<Boolean>isMelee = new ArrayList<Boolean>(8);
  private ArrayList<Integer>spawnTimes = new ArrayList<Integer>(8);
  private ArrayList<Integer>speeds = new ArrayList<Integer>(8);
  private ArrayList<Integer>armour = new ArrayList<Integer>(8);
  private ArrayList<Integer>ranges = new ArrayList<Integer>(8);
  private ArrayList<Integer>damages = new ArrayList<Integer>(8);
  private boolean[]show = new boolean[8];
  
  public boolean getShow(int i){
    return show[i];
  }
  
  public void setShow(int i){
    show[i] = false;
  } 

  public int getSpearUpgrade() {
    return this.spearUpgrade;
  }
  public int getMoney() {
    return this.money;
  }
  public int getSwordUpgrade() {
    return this.swordUpgrade;
  }
  public int getSpeedUpgrade() {
    return this.speedUpgrade;
  }
  public int getAxeUpgrade() {
    return this.axeUpgrade;
  }
  public int getHalberdUpgrade() {
    return this.halberdUpgrade;
  }
  public int getArmourUpgrade() {
    return this.armourUpgrade;
  }
  public int getRangeUpgrade() {
    return this.rangeUpgrade;
  }

  public void setMoney(int n) {
    this.money = n;
  }
  public void setSpearUpgrade(int n) {
    this.spearUpgrade = n;
  }
  public void setSwordUpgrade(int n) {
    this.swordUpgrade = n;
  }
  public void setSpeedUpgrade(int n) {
    this.speedUpgrade = n;
  }
  public void setAxeUpgrade(int n) {
    this.axeUpgrade = n;
  }
  public void setHalberdUpgrade(int n) {
    this.halberdUpgrade = n;
  }
  public void setArmourUpgrade(int n) {
    this.armourUpgrade = n;
  }
  public void setRangeUpgrade(int n) {
    this.rangeUpgrade = n;
  }

  public void setRace(String n) {
    this.race = n;
  }

  public void setUnits(int n) {
    this.units = n;
  }

  public int getUnits() {
    return this.units;
  }

  public void setName(String n) {
    names.add(n);
  }

  public void setSpeed(int n) {
    speeds.add(n);
  }

  public void setSpeed(int n, int choice) {
    speeds.set(choice, n);
  }

  public void setArmour(int n) {
    armour.add(n);
  }
  public void setArmour(int n, int choice) {
    armour.set(choice, n);
  }

  public void setRange(int n) {
    ranges.add(n);
  }

  public void setRange(int n, int choice) {
    ranges.set(choice, n);
  }

  public void setDamages(int n) {
    damages.add(n);
  }

  public void setDamages(int n, int choice) {
    damages.set(choice, n);
  }

  public void setType(boolean n) {
    isMelee.add(n);
  }

  public boolean setType(int choice) {
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

  public int getSpawnTime(int n) {
    return spawnTimes.get(n);
  }

  public void setSpawnTime(int n) {
    spawnTimes.add(n);
  }

  public void setIsMelee(boolean n) {
    isMelee.add(n);
  }

  public boolean getIsMelee(int choice) {
    return isMelee.get(choice);
  }
}