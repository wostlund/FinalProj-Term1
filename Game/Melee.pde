public class Melee extends Unit{

    // decided to convert spearman to melee so that we do not have to make many unncecessary reskins of same class. All close quarters enemies work the same but just have different values so this should work.
    //ok
    
    public Melee(float xcor, float ycor, int speed, int armour, int range, int damage, String race, String name){
  this.setSpeed(speed);
  this.setArmour(armour);
  this.setRange(range);
  this.setDamage(damage);
  this.setRace(race);
  this.setName(name);
  this.setXcor(xcor);
  this.setYcor(ycor);
    }
    
    public Melee(){
  this(0, 80, 0, 0, 0, 0, "Men", "Spearman");
    }
    
    public void display(){
      switch(this.getName()){
        case "Spearman":
          ellipse(this.getXcor(), this.getYcor(), 40, 40);
          break;
        case "Swordsman":
          rect(this.getXcor()-20, this.getYcor()-20, 40, 40);
          break;
        default:
          beginShape(); //makes a triangle
          vertex(this.getXcor(), this.getYcor()+20); //This doesn't work, I don't think we'll need that
          vertex(this.getXcor() - 20, this.getYcor()-20);
          vertex(this.getXcor() + 20, this.getYcor()-20);
          endShape();
          break;
      }
      switch(this.getRace()){
         case "Men":
           this.setFill(color(0));
           break;
         default:
           this.setFill(color(0));
           break;
      }
    }
}