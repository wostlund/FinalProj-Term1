public class Spearman extends Unit{

    public Spearman(int speed, int armour, int range, int damage, String race){
	this.setSpeed(speed);
	this.setArmour(armour);
	this.setRange(range);
	this.setDamage(damage);
	this.setRace(race);    
    }

    public Spearman(){
	this(0, 0, 0, 0, "Men");
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
