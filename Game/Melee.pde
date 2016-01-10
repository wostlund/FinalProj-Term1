public class Melee extends Unit{
    private PShape avatar;

    // decided to convert spearman to melee so that we do not have to make many unncecessary reskins of same class. All close quarters enemies work the same but just have different values so this should work.
    //ok
    
    public Melee(float xcor, float ycor, int speed, int armour, int range, int damage, String race, String name, boolean id){
  this.setSpeed(speed);
  this.setArmour(armour);
  this.setRange(range);
  this.setDamage(damage);
  this.setRace(race);
  this.setName(name);
  this.setXcor(xcor);
  this.setYcor(ycor);
  this.setPlayer(id);
    }
    
    public Melee(){
  this(0, 80, 0, 0, 0, 0, "Men", "Spearman", true);
    }
    
    public void makeShape(){
      switch(this.getName()){
        case "Spearman":
          avatar = createShape(ELLIPSE ,this.getXcor(), this.getYcor(), 40, 40);
          break;
        case "Swordsman":
          avatar = createShape(RECT,this.getXcor()-20, this.getYcor()-20, 40, 40);
          break;
        default:
          break;
      }
    }
      
     public void setColor(){
       switch(this.getRace()){
         case "Men":
           avatar.setFill(color(0,0,256));
           break;
         default:
           break;
      }
    }
    
    public void setupDisplay(){
      this.makeShape();
      this.setColor();
    }
    
    public void display(){
      shape(avatar, this.getXcor(), this.getYcor()); 
    }
}