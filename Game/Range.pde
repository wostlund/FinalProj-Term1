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
    this.makeShape();
  }

  public Range() {
    this(0, 0, 0, 0, 0, 0, "Men", "Archer", true, 0);
  }


  public void makeShape() {
    switch(this.getName()) {
    case "Archer":
      avatar = createShape(TRIANGLE, this.getXcor(), this.getYcor()+20, this.getXcor()-20, this.getYcor()-20, this.getXcor()+20, this.getYcor()-20);
      break;
    case "Mage":
      avatar = createShape(TRIANGLE, this.getXcor(), this.getYcor()-20, this.getXcor()+20, this.getYcor()+20, this.getXcor()-20, this.getYcor()+20);
      break;
    case "Javelin Thrower":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor() + 20 * sin(PI/4), this.getYcor() - 15 * cos( PI/4));
      avatar.vertex(this.getXcor(), this.getYcor() - 20);
      avatar.vertex(this.getXcor() - 20 * sin(PI/4), this.getYcor() - 15 * cos( PI/4));
      avatar.vertex(this.getXcor() - 20 * sin(PI/4), this.getYcor() + 15 * cos( PI/4));
      avatar.vertex(this.getXcor(), this.getYcor() + 20);
      avatar.vertex(this.getXcor() + 20 * sin(PI/4), this.getYcor() + 15 * cos( PI/4));
      avatar.endShape();
      break;
    case "Range":
      avatar = createShape(TRIANGLE, this.getXcor(), this.getYcor()+25, this.getXcor()-25, this.getYcor()-25, this.getXcor()+25, this.getYcor()-25);
      break;
    case "Axe Thrower":
      avatar = createShape();
      avatar.beginShape();
      avatar.vertex(this.getXcor() + 30, this.getYcor());
      avatar.vertex(this.getXcor(), this.getYcor() + 20);
      avatar.vertex(this.getXcor() - 30, this.getYcor());
      avatar.vertex(this.getXcor(), this.getYcor() - 20);
      avatar.endShape();
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
    default:
      avatar.setFill(color(0));
      break;
    }
  }

  public void display() {
    shape(avatar, this.getXcor(), this.getYcor());
  }


  /*public void move() {
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
   }*/

  public void move(Unit[][]k) { // need to make stop if get  too close
    AttackChoice m = new AttackChoice(k);
    if (this.getPlayer()) {
      if (m.inLane(this.getLane()) && this.getXcor() + this.getRange() * 1.6  >= m.findMin()[this.getLane()] && attack > 0) {
        float[]x = m.findMin();
        attack(m.minUnit(x)[this.getLane()]);
        attack = - 12;
        pause = -75;
      } else {
        if (pause > 0) {
          this.setXcor(this.getXcor() + (this.getSpeed() / 4.0));
          attack ++;
        }
      }
    } else {
      if (m.inLane(this.getLane()) && this.getXcor() - this.getRange() * 1.6 <= m.findMax()[this.getLane()] && attack > 0) {
        float[]x = m.findMin();
        attack(m.maxUnit(x)[this.getLane()]);
        attack = -12;
        pause = -75;
      } else {
        if (pause > 0) {
          this.setXcor(this.getXcor() - (this.getSpeed() / 4.0));
          attack ++;
        }
      }
    }
    pause ++;
  }
}