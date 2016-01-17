public class Data {
  private String race;
  private ArrayList<String>names = new ArrayList<String>(8);
  private ArrayList<Integer>speeds = new ArrayList<Integer>(8);
  private ArrayList<Integer>armour = new ArrayList<Integer>(8);
  private ArrayList<Integer>ranges = new ArrayList<Integer>(8);
  private ArrayList<Integer>damages = new ArrayList<Integer>(8);

  public void setRace(String n) {
    this.race = n;
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