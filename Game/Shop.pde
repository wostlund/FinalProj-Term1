public class Shop {

  //This is self explanitory

  PFont a, b, c, d, e, f, g;
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
  }

  public int mouseClicked(Data n) {
    if (n.getUnits() < 8) {
      if (mouseX<= 220 && mouseX>= 60 && mouseY <=760 && mouseY>=600 && filled1==false) {
        filled1=true;
        n.setName("Mage");
        n.setSpeed(3);
        n.setArmour(10);
        n.setRange(100);
        n.setDamages(125);
        n.setIsMelee(false);
        n.setSpawnTime(300);
        n.setUnits(n.getUnits()+1);
      }else if (mouseX<= 385 && mouseX>= 225 && mouseY <=760 && mouseY>=600 && filled2==false) {
        filled2=true;
        n.setName("Mounted Spearman");
        n.setSpeed(6);
        n.setArmour(100);
        n.setRange(130);
        n.setDamages(20);
        n.setIsMelee(true);
        n.setSpawnTime(500);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX<= 550 && mouseX >= 390 && mouseY <= 760 && mouseY>= 600 && filled3 == false){
        filled3=true;
        n.setName("Halberdier");
        n.setSpeed(2);
        n.setArmour(40);
        n.setRange(125);
        n.setDamages(40);
        n.setIsMelee(true);
        n.setSpawnTime(180);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX <= 715 && mouseX >= 555  && mouseY <= 760 && mouseY>= 600 && filled4 == false){
        filled4=true;
        n.setName("Mounted Halberdier");
        n.setSpeed(8);
        n.setArmour(45);
        n.setRange(130);
        n.setDamages(40);
        n.setIsMelee(true);
        n.setSpawnTime(450);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX <= 1045 && mouseX >= 885  && mouseY <= 760 && mouseY>= 600 && filled6 == false){
        filled6=true;
        n.setName("Longswordsman");
        n.setSpeed(3);
        n.setArmour(100);
        n.setRange(100);
        n.setDamages(60);
        n.setIsMelee(true);
        n.setSpawnTime(380);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX <= 1210 && mouseX >= 1050  && mouseY <= 760 && mouseY>= 600 && filled7 == false){
        filled7=true;
        n.setName("Axeman");
        n.setSpeed(5);
        n.setArmour(80);
        n.setRange(110);
        n.setDamages(45);
        n.setIsMelee(true);
        n.setSpawnTime(250);
        n.setUnits(n.getUnits()+1);
      } else if (mouseX <= 880 && mouseX >= 720  && mouseY <= 760 && mouseY>= 600 && filled5 == false){
        filled5=true;
        n.setName("Scout");
        n.setSpeed(10);
        n.setArmour(10);
        n.setRange(60);
        n.setDamages(10);
        n.setIsMelee(true);
        n.setSpawnTime(170);
        n.setUnits(n.getUnits()+1);
      }
    } 
    if (mouseX>= 1100 && mouseX<= 1400 && mouseY>= 850 && mouseY <= 940) {
      return 4;
    }
    return 0;
  }
}