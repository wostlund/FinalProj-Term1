public class Shop {

  //This is self explanitory

  PFont a, b, c, d, e, f, g, speed, armour, range, spear, sword, halberd, axe;
  private PShape choice1, choice2, choice3, choice4, choice5, choice6, choice7, choice8;

  private boolean filled1, filled2, filled3, filled4, filled5, filled6, filled7, filled8;  

  public Shop() {
    filled1 = false;
    filled2 = false;
    filled3 = false;
    filled4 = false;
    filled5 = false;
    filled6 = false;
    filled7 = false;
    filled8 = false;
  }

  public void shopSetup() {
    choice1 = createShape(RECT, 60, 600, 160, 160);
    choice1.setFill(color(#AD2E1F));
    choice2 = createShape(RECT, 225, 600, 160, 160);
    choice2.setFill(color(#AD2E1F));
    choice3 = createShape(RECT, 390, 600, 160, 160);
    choice3.setFill(color(#AD2E1F));
    choice4 = createShape(RECT, 555, 600, 160, 160);
    choice4.setFill(color(#AD2E1F));
    choice5 = createShape(RECT, 720, 600, 160, 160);
    choice5.setFill(color(#AD2E1F));
    choice6 = createShape(RECT, 885, 600, 160, 160);
    choice6.setFill(color(#AD2E1F));
    choice7 = createShape(RECT, 1050, 600, 160, 160);
    choice7.setFill(color(#AD2E1F));
    choice8 = createShape(RECT, 1215, 600, 160, 160);
    choice8.setFill(color(#AD2E1F));
    a = createFont("Ariel", 72); 
    b = createFont("Ariel", 72); 
    c = createFont("Ariel", 72); 
    d = createFont("Ariel", 72);
    e = createFont("Ariel", 72);
    f = createFont("Ariel", 72);
    g = createFont("Ariel", 72);
    speed = createFont("Ariel", 72);
    armour = createFont("Ariel", 72); 
    range = createFont("Ariel", 72); 
    spear = createFont("Ariel", 72);
    sword = createFont("Ariel", 72);
    halberd = createFont("Ariel", 72);
    axe = createFont("Ariel", 72);
  }

  public void upgradeSpeed(Data n) {
    for (int i =0; i<n.getUnits(); i++) {
      n.setSpeed(n.getSpeed(i)+1, i);
    }
  }
  public void upgradeArmour(Data n) {
    for (int i =0; i<n.getUnits(); i++) {
      n.setArmour(n.getSpeed(i)+10, i);
    }
  }

  public void upgradeSpear(Data n) {
    for (int i =0; i<n.getUnits(); i++) {
      if (n.getName(i).equals("Spearman") || n.getName(i).equals("Mounted Spearman")) {
        n.setDamages(n.getDamage(i)+5, i);
      }
    }
  }
  
  public void upgradeSword(Data n) {
    for (int i =0; i<n.getUnits(); i++) {
      if (n.getName(i).equals("Swordsman")) {
        n.setDamages(n.getDamage(i)+5, i);
      }
    }
  }
  
  public void upgradeAxe(Data n) {
    for (int i =0; i<n.getUnits(); i++) {
      if (n.getName(i).equals("Axeman")) {
        n.setDamages(n.getDamage(i)+5, i);
      }
    }
  }
  
  public void upgradeHalberd(Data n) {
    for (int i =0; i<n.getUnits(); i++) {
      if (n.getName(i).equals("Halberdier") || n.getName(i).equals("Mounted Halberdier")) {
        n.setDamages(n.getDamage(i)+1, i);
      }
    }
  }
  
  public void upgradeRange(Data n){
    for (int i =0; i<n.getUnits(); i++) {
      if (n.getName(i).equals("Archer") || n.getName(i).equals("Mage")) {
        n.setDamages(n.getDamage(i)+1, i);
        n.setRange(n.getRange(i)+1, i);
      }
    }
  }

  public void shopDraw(Data n) {
    background(color(#5D5A5A));
    shape(choice1);
    shape(choice2);
    shape(choice3);
    shape(choice4);
    shape(choice5);
    shape(choice6);
    shape(choice7);
    shape(choice8);
    textFont(a);
    textSize(72);
    text("Money", 50, 200);
    textFont(b);
    textSize(36);
    text("Your Army's Units", 50, 570);
    textFont(c);
    textSize(24);
    text("Kills", 50, 400);
    textFont(d);
    fill(color(#D6E531));
    textSize(42);
    text("Upgrades", 600, 140);
    textSize(32);
    text ("Upgrade                      Current            Cost", 600, 200);
    textFont(e);
    textSize(32);
    fill(color(255));
    text ("Speed Training (+1)", 600, 250);
    textFont(f);
    textSize(32);
    fill(color(255));
    text ("Armour Training (+10)", 600, 290);
    text ("Marksmanship (+1)", 600, 330);
    text("Spear Training (+5)", 600, 370);
    text("Swordsmanship (+5)", 600, 410);
    text("Halberd Training (+5)", 600, 450);
    text("Axe Training (+5)", 600, 490);
    text (""+n.getSpeedUpgrade() + "                 "+(n.getSpeedUpgrade()*600 + 600), 971, 250);
    text (""+n.getArmourUpgrade() + "                 "+(n.getArmourUpgrade()*600 + 600), 971, 290);
    text (""+n.getRangeUpgrade() + "                 "+(n.getRangeUpgrade()*600 + 600), 971, 330);
    text (""+n.getSpearUpgrade() + "                 "+(n.getSpearUpgrade()*600 + 600), 971, 370);
    text (""+n.getSwordUpgrade() + "                 "+(n.getSwordUpgrade()*600 + 600), 971, 410);
    text (""+n.getHalberdUpgrade() + "                 "+(n.getHalberdUpgrade()*600 + 600), 971, 450);
    text (""+n.getAxeUpgrade() + "                 "+(n.getAxeUpgrade()*600 + 600), 971, 490);
    textFont(g);
    fill(color(255));
    if (mouseX>= 1100 && mouseX<= 1400 && mouseY>= 850 && mouseY <= 940) {
      textSize(72);
      text("Continue", 1080, 900);
    } else {
      textSize(64); 
      text ("Continue", 1100, 900);
    }
    if (n.getMoney() >= n.getSpeedUpgrade()*600 + 600) {
      textFont(speed);
      textSize(32);
      if (mouseX>= 1250 && mouseX<= 1325 && mouseY>= 220 && mouseY <= 255) {
        fill(color(#D6E531));
      } else {
        fill(color(255));
      }
      text("Buy", 1250, 250);
    }
    if (n.getMoney() >= n.getArmourUpgrade()*600 + 600) {
      textFont(armour);
      textSize(32);
      if (mouseX>= 1250 && mouseX<= 1325 && mouseY>= 260 && mouseY <= 295) {
        fill(color(#D6E531));
      } else {
        fill(color(255));
      }
      text("Buy", 1250, 290);
    }
    if (n.getMoney() >= n.getRangeUpgrade()*600 + 600) {
      textFont(range);
      textSize(32);
      if (mouseX>= 1250 && mouseX<= 1325 && mouseY>= 300 && mouseY <= 335) {
        fill(color(#D6E531));
      } else {
        fill(color(255));
      }
      text("Buy", 1250, 330);
    }
    if (n.getMoney() >= n.getSpearUpgrade()*600 + 600) {
      textFont(speed);
      textSize(32);
      if (mouseX>= 1250 && mouseX<= 1325 && mouseY>= 340 && mouseY <= 375) {
        fill(color(#D6E531));
      } else {
        fill(color(255));
      }
      text("Buy", 1250, 370);
    }
    if (n.getMoney() >= n.getSwordUpgrade()*600 + 600) {
      textFont(speed);
      textSize(32);
      if (mouseX>= 1250 && mouseX<= 1325 && mouseY>= 380 && mouseY <= 415) {
        fill(color(#D6E531));
      } else {
        fill(color(255));
      }
      text("Buy", 1250, 410);
    }
    if (n.getMoney() >= n.getHalberdUpgrade()*600 + 600) {
      textFont(speed);
      textSize(32);
      if (mouseX>= 1250 && mouseX<= 1325 && mouseY>= 420 && mouseY <= 455) {
        fill(color(#D6E531));
      } else {
        fill(color(255));
      }
      text("Buy", 1250, 450);
    }
    if (n.getMoney() >= n.getAxeUpgrade()*600 + 600) {
      textFont(speed);
      textSize(32);
      if (mouseX>= 1250 && mouseX<= 1325 && mouseY>= 460 && mouseY <= 495) {
        fill(color(#D6E531));
      } else {
        fill(color(255));
      }
      text("Buy", 1250, 490);
    }
    fill(color(255));
  }

  public int mouseClicked(Data n) {
    if (n.getUnits() < 8) {
      if (mouseX<= 220 && mouseX>= 60 && mouseY <=760 && mouseY>=600 && filled1==false) {
        filled1=true;
        n.setName("Mage");
        n.setSpeed(3 + n.getSpeedUpgrade());
        n.setArmour(10 + (n.getArmourUpgrade() * 10));
        n.setRange(100);
        n.setDamages(125);
        n.setIsMelee(false);
        n.setSpawnTime(300);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX<= 385 && mouseX>= 225 && mouseY <=760 && mouseY>=600 && filled2==false) {
        filled2=true;
        n.setName("Mounted Spearman");
        n.setSpeed(6 + n.getSpeedUpgrade());
        n.setArmour(100 + (n.getArmourUpgrade() * 10));
        n.setRange(130);
        n.setDamages(20 + n.getSpearUpgrade() * 5);
        n.setIsMelee(true);
        n.setSpawnTime(500);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX<= 550 && mouseX >= 390 && mouseY <= 760 && mouseY>= 600 && filled3 == false) {
        filled3=true;
        n.setName("Halberdier");
        n.setSpeed(2 + n.getSpeedUpgrade());
        n.setArmour(40 + (n.getArmourUpgrade() * 10));
        n.setRange(125);
        n.setDamages(40 + n.getHalberdUpgrade() * 5);
        n.setIsMelee(true);
        n.setSpawnTime(180);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX <= 715 && mouseX >= 555  && mouseY <= 760 && mouseY>= 600 && filled4 == false) {
        filled4=true;
        n.setName("Mounted Halberdier");
        n.setSpeed(8 + n.getSpeedUpgrade());
        n.setArmour(45 + (n.getArmourUpgrade() * 10));
        n.setRange(130);
        n.setDamages(40 + n.getHalberdUpgrade()*5);
        n.setIsMelee(true);
        n.setSpawnTime(450);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX <= 1045 && mouseX >= 885  && mouseY <= 760 && mouseY>= 600 && filled6 == false) {
        filled6=true;
        n.setName("Longswordsman");
        n.setSpeed(3 + n.getSpeedUpgrade());
        n.setArmour(100 + (n.getArmourUpgrade() * 10));
        n.setRange(100);
        n.setDamages(60 + n.getSwordUpgrade() * 5);
        n.setIsMelee(true);
        n.setSpawnTime(380);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX <= 1210 && mouseX >= 1050  && mouseY <= 760 && mouseY>= 600 && filled7 == false) {
        filled7=true;
        n.setName("Axeman");
        n.setSpeed(5 + n.getSpeedUpgrade());
        n.setArmour(80 + (n.getArmourUpgrade() * 10));
        n.setRange(110);
        n.setDamages(45 + n.getAxeUpgrade() * 5);
        n.setIsMelee(true);
        n.setSpawnTime(250);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX <= 880 && mouseX >= 720  && mouseY <= 760 && mouseY>= 600 && filled5 == false) {
        filled5=true;
        n.setName("Scout");
        n.setSpeed(10 + n.getSpeedUpgrade());
        n.setArmour(10 + (n.getArmourUpgrade() * 10));
        n.setRange(60);
        n.setDamages(10);
        n.setIsMelee(true);
        n.setSpawnTime(170);
        n.setUnits(n.getUnits()+1);
      }
    }
    if (n.getMoney() >= n.getSpearUpgrade() * 600 + 600 && mouseX>= 1250 && mouseX<= 1325 && mouseY>= 220 && mouseY <= 255) {
      int x = 10;
    }
    if (mouseX>= 1100 && mouseX<= 1400 && mouseY>= 850 && mouseY <= 940) {
      return 4;
    }
    return 0;
  }
}