public class Range extends Unit{
  private PShape avatar;

   public Range(float xcor, float ycor, int speed, int armour, int range, int damage, String race, String name, boolean id){
  this.setSpeed(speed);
  this.setArmour(armour);
  this.setRange(range);
  this.setDamage(damage);
  this.setRace(race);
  this.setName(name); 
  this.setYcor(ycor);
  this.setXcor(xcor);
  this.setPlayer(id);
    }

    public Range(){
  this(0, 0, 0, 0, 0, 0, "Men", "Archer", true);
    }

  
  public void makeShape(){
     switch(this.getName()){
       case "Archer":
         avatar = createShape(TRIANGLE, this.getXcor(), this.getYcor()+20, this.getXcor()-20, this.getYcor()-20, this.getXcor()+20, this.getYcor()-20);
         break;
       default:
         triangle(this.getXcor(), this.getYcor()+20, this.getXcor()-20, this.getYcor()-20, this.getXcor()+20, this.getYcor()-20);
     }
  }
    
  public void setupDisplay(){
     this.makeShape(); 
  }
  
  public void display(){
     shape(avatar, this.getXcor(), this.getYcor());
  }
   
}