public class Shop {

  //This is self explanitory

  PFont a, b, c, d, e, f;
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
  }

  public void shopDraw() {
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
    text ("Speed Training (+1)          0                  600", 600, 250);
    textFont(f);
    textSize(32);
    fill(color(255));
    text ("Armour Training (+10)", 600, 290);
    text ("Marksmanship (+1)", 600, 330);
    text("Spear Training (+5)", 600, 370);
    text("Swordsmanship (+5)", 600, 410);
    text("Halberd Training (+5)", 600, 450);
    text("Axe Training (+5)", 600, 490);
    text ("0                  600", 971, 290);
    text ("0                  600", 971, 330);
    text ("0                  600", 971, 370);
    text ("0                  600", 971, 410);
    text ("0                  600", 971, 450);
    text ("0                  600", 971, 490);
  }

  public void mouseClicked(Data n) {
    if (mouseX<= 220 && mouseX>= 60 && mouseY <=760 && mouseY>=600 && filled1==false) {
      filled1=true;
      n.setName("Mage", n.getUnits());
      n.setSpeed(3, n.getUnits());
      n.setArmour(110, n.getUnits());
      n.setRange(100, n.getUnits());
      n.setDamages(50 , n.getUnits());
      n.setIsMelee(false, n.getUnits());
    }
  }
}