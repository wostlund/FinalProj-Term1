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

    public void move(){
	this.setSpeed(this.getSpeed());
	//This is complete BS too, we'll implement it when we start processing
    }

    public void die(){
	//more bs
	this.setArmour(0);
    }
}
