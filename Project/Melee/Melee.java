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

    public void move(){
	this.setSpeed(this.getSpeed());
	//This is complete BS, we'll implement it when we start processing
    }

    public void die(){
	//more bs
	this.setArmour(0);
    }
}
