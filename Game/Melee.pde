public class Melee extends Unit {
  private PShape avatar;

  // decided to convert spearman to melee so that we do not have to make many unncecessary reskins of same class. All close quarters enemies work the same but just have different values so this should work.
  //ok

  public Melee(float xcor, float ycor, int speed, int armour, int range, int damage, String race, String name, boolean id, int lane) {
    this.setSpeed(speed);
    this.setArmour(armour);
    this.setRange(range);
    this.setDamage(damage);
    this.setRace(race);
    this.setName(name);
    this.setXcor(xcor);
    this.setYcor(ycor);
    this.setPlayer(id);
    this.setLane(lane);
  }

  public Melee() {
    this(0, 80, 0, 0, 0, 0, "Men", "Spearman", true, 0);
  }

  public void makeShape() {
    switch(this.getName()) {
    case "Spearman":
      avatar = createShape(ELLIPSE, this.getXcor(), this.getYcor(), 40, 40);
      break;
    case "Swordsman":
      avatar = createShape(RECT, this.getXcor()-20, this.getYcor()-20, 40, 40);
      break;
    case "Mounted Spearman":
      avatar = createShape(ELLIPSE, this.getXcor(), this.getYcor(), 50, 50);
      break;
    case "Mounted Halberdier":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor() - 30, this.getYcor() + 20);
      avatar.vertex(this.getXcor() + 30, this.getYcor() + 20);
      avatar.vertex(this.getXcor() + 20, this.getYcor() - 20);
      avatar.vertex(this.getXcor() - 20, this.getYcor() - 20);
      avatar.endShape(CLOSE);
      break;
    case "Halberdier":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor() - 20, this.getYcor() + 10);
      avatar.vertex(this.getXcor() + 20, this.getYcor() + 10);
      avatar.vertex(this.getXcor() + 10, this.getYcor() - 10);
      avatar.vertex(this.getXcor() - 10, this.getYcor() - 10);
      avatar.endShape(CLOSE);
      break;
    case "Scout":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor() - 20, this.getYcor() + 20);
      avatar.vertex(this.getXcor(), this.getYcor() + 20);
      avatar.vertex(this.getXcor() + 20, this.getYcor() - 20);
      avatar.vertex(this.getXcor(), this.getYcor() - 20);
      avatar.endShape(CLOSE);
      break;
    case "Longswordsman":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor() - 20, this.getYcor() + 30);
      avatar.vertex(this.getXcor() + 20, this.getYcor() + 30);
      avatar.vertex(this.getXcor() + 20, this.getYcor() - 30);
      avatar.vertex(this.getXcor() - 20, this.getYcor() - 30);
      avatar.endShape(CLOSE);
      break;
    case "Axeman":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor(), this.getYcor() + 20);
      avatar.vertex(this.getXcor() - 20, this.getYcor());
      avatar.vertex(this.getXcor(), this.getYcor() - 20);
      avatar.vertex(this.getXcor() + 20, this.getYcor());
      avatar.endShape(CLOSE);
      break;    
    case "Giant Troll":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor(), this.getYcor() - 40);
      avatar.vertex(this.getXcor() - sin((2*PI)/5)*40, this.getYcor() - cos((2*PI)/5)*40);
      avatar.vertex(this.getXcor() - sin((4*PI)/5)*40, this.getYcor() + cos((PI)/5)*40);
      avatar.vertex(this.getXcor() + sin((4*PI)/5)*40, this.getYcor() + cos((PI)/5)*40);
      avatar.vertex(this.getXcor() + sin((2*PI)/5)*40, this.getYcor() - cos((2*PI)/5)*40);
      avatar.endShape();
      break;
    case "King's Guard":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor() - 20, this.getYcor() - 25);
      avatar.vertex(this.getXcor() + 20, this.getYcor() - 25);
      avatar.vertex(this.getXcor() + 20, this.getYcor() + 15);
      avatar.vertex(this.getXcor(), this.getYcor() + 25);
      avatar.vertex(this.getXcor() - 20, this.getYcor() + 15);
      avatar.endShape();
      break;
    case "Flailer":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor() + 8, this.getYcor() + 18);
      avatar.vertex(this.getXcor() - 8, this.getYcor() + 18);
      avatar.vertex(this.getXcor() - 18, this.getYcor() + 8);
      avatar.vertex(this.getXcor() - 18, this.getYcor() - 8);
      avatar.vertex(this.getXcor() - 8, this.getYcor() - 18);
      avatar.vertex(this.getXcor() + 8, this.getYcor() - 18);
      avatar.vertex(this.getXcor() + 18, this.getYcor() - 8);
      avatar.vertex(this.getXcor() + 18, this.getYcor() + 8);
      avatar.endShape();
      break;
    case "Battle Axeman":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor(), this.getYcor()+30);
      avatar.vertex(this.getXcor()+20, this.getYcor());
      avatar.vertex(this.getXcor(), this.getYcor()-30);
      avatar.vertex(this.getXcor()-20, this.getYcor());
      avatar.endShape();
    case "Whirler":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor()+20, this.getYcor());
      avatar.vertex(this.getXcor()+5, this.getYcor()+5);
      avatar.vertex(this.getXcor(), this.getYcor()+20);
      avatar.vertex(this.getXcor()-5, this.getYcor()+5);
      avatar.vertex(this.getXcor()-20, this.getYcor());
      avatar.vertex(this.getXcor()-5, this.getYcor()-5);
      avatar.vertex(this.getXcor(), this.getYcor()-20);
      avatar.vertex(this.getXcor()+5, this.getYcor()-5);
      avatar.endShape();
      break;
    case "Spearmaster":
      avatar = createShape(ELLIPSE, this.getXcor(), this.getYcor(), 60, 40);
      
    default:
      break;
    }
  }

  public void setColor() {
    switch(this.getRace()) {
    case "Men":
      avatar.setFill(color(0, 0, 256));
      break;
    case "Orcs of the North":
      avatar.setFill(color(256, 0, 0));
      break;
    case "Orcs of the South":
      avatar.setFill(color(#8E6D6D));
      break;
    case "Mountain Trolls":
      avatar.setFill(color(#E535DA));
      break;
    case "Forest Elves":
      avatar.setFill(color(#34934E));
      break;
    case "Men of the West":
      avatar.setFill(color(#ECF511));
      break;
    case "Night Elves":
      avatar.setFill(color(#9014B7));
      break;
    case "The Undead":
      avatar.setFill(color(#DBFFE9));
      break;
    default:
      avatar.setFill(color(0));
      break;
    }
  }

  public void setupDisplay() {
    this.makeShape();
    this.setColor();
  }

  public void display() {
    shape(avatar, this.getXcor(), this.getYcor());
  }
}