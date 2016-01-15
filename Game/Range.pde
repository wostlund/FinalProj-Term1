public class Range extends Unit {
  private PShape avatar;
  private int pause = 0;
  private int attack = 0;
  
  public Range(float xcor, float ycor, int speed, int armour, int range, int damage, String race, String name, boolean id, int lane) {
    this.setSpeed(speed);
    this.setArmour(armour);
    this.setRange(range);
    this.setDamage(damage);
    this.setRace(race);
    this.setName(name); 
    this.setYcor(ycor);
    this.setXcor(xcor);
    this.setPlayer(id);
    this.setLane(lane);
  }

  public Range() {
    this(0, 0, 0, 0, 0, 0, "Men", "Archer", true, 0);
  }


  public void makeShape() {
    switch(this.getName()) {
    case "Archer":
      avatar = createShape(TRIANGLE, this.getXcor(), this.getYcor()+20, this.getXcor()-20, this.getYcor()-20, this.getXcor()+20, this.getYcor()-20);
      break;
    default:
      triangle(this.getXcor(), this.getYcor()+20, this.getXcor()-20, this.getYcor()-20, this.getXcor()+20, this.getYcor()-20);
    }
  }

  public void setupDisplay() {
    this.makeShape(); 
    this.setColor();
  }

  public void setColor() {
    switch(this.getRace()) {
    case "Men":
      avatar.setFill(color(0, 0, 256));
    }
  }

  public void display() {
    shape(avatar, this.getXcor(), this.getYcor());
  }
  

  public void move() {
    if (pause < 150 && pause > 0) {
      if (this.getPlayer()) {
        this.setXcor(this.getXcor() + (this.getSpeed() / 4.0));
      } else {
        this.setXcor(this.getXcor() - (this.getSpeed() / 4.0));
      }
    }
    if (pause > 150) {
      pause = -75;
    }
    pause ++;
  }
  
  public void move(Unit[][]k) {
    AttackChoice m = new AttackChoice(k);
    if (this.getPlayer()) {
      if (m.inLane(this.getLane()) && this.getXcor() + this.getRange() * 1.6  >= m.findMin()[this.getLane()]) {
        attack(m.minUnit()[this.getLane()]);
      } else {
        this.setXcor(this.getXcor() + (this.getSpeed() / 4.0));
      }
    } else {
      if (m.inLane(this.getLane()) && this.getXcor() - this.getRange() * 1.6 <= m.findMax()[this.getLane()]) {
        attack(m.maxUnit()[this.getLane()]);
      } else {
        this.setXcor(this.getXcor() - (this.getSpeed() / 4.0));
      }
    }
  }
  
  
}