public abstract class Unit{

    private int speed, armour, range, damage;
    private String race, name;

    public int getSpeed(){return speed;}
    public int getArmour(){return armour;}
    public int getRange(){return range;}
    public int getDamage(){return damage;}
    public String getRace(){return race;}
    public String getName(){return name;}
    
    public void setSpeed(int s){speed = s;}
    public void setArmour(int a){armour = a;}
    public void setRange(int r){range = r;}
    public void setDamage(int d){damage = d;}
    public void setRace(String r){race = r;}
    public void setName(String n){name = n;}
    

    public abstract int move();


    public void attack(Unit other){
  other.takeDamage((int)(this.damage*.8)+(int)(Math.random()*this.damage*.2));
    }

    public void takeDamage(int Damage){
  armour-=Damage;
    }

    public String toString(){
  return race + " : " + name + " --" + " speed = " + speed + " armour = " + armour + " range = " + range + " damage = " + damage;
    }

    
}

public class Melee extends Unit{

    // decided to convert spearman to melee so that we do not have to make many unncecessary reskins of same class. All close quarters enemies work the same but just have different values so this should work.
    //ok
    
    public Melee(int speed, int armour, int range, int damage, String race, String name){
  this.setSpeed(speed);
  this.setArmour(armour);
  this.setRange(range);
  this.setDamage(damage);
  this.setRace(race);
  this.setName(name);    
    }
    
    public Melee(){
  this(0, 0, 0, 0, "Men", "Spearman");
    }

    public int move(){
  return this.getSpeed();
    }
    
    
}

public class Range extends Unit{

   public Range(int speed, int armour, int range, int damage, String race, String name){
  this.setSpeed(speed);
  this.setArmour(armour);
  this.setRange(range);
  this.setDamage(damage);
  this.setRace(race);
  this.setName(name);    
    }

    public Range(){
  this(0, 0, 0, 0, "Men", "Archer");
    }

    public int move(){
  return this.getSpeed();
    }
}
  
  
    