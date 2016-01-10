public class Range extends Unit{

   public Range(float xcor, float ycor, int speed, int armour, int range, int damage, String race, String name){
  this.setSpeed(speed);
  this.setArmour(armour);
  this.setRange(range);
  this.setDamage(damage);
  this.setRace(race);
  this.setName(name); 
  this.setYcor(ycor);
  this.setXcor(xcor);
    }

    public Range(){
  this(0, 0, 0, 0, 0, 0, "Men", "Archer");
    }

  
  public void display(){
     switch(this.getName()){
       case "Archer":
         triangle(this.getXcor(), this.getYcor()+20, this.getXcor()-20, this.getYcor()-20, this.getXcor()+20, this.getYcor()-20);
         break;
       default:
         triangle(this.getXcor(), this.getYcor()+20, this.getXcor()-20, this.getYcor()-20, this.getXcor()+20, this.getYcor()-20);
     }
  }
    

   
}
