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

    