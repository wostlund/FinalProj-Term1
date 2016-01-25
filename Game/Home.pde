public class Home {
  PFont g, m, i;
  
  Home() {
    g = createFont("Arial", 16, true);
    m = createFont("Arial", 16, true);
    i = createFont("Arial", 16, true);
    //j = createFont("Arial", 16, true);
  }

  public void displayMenu() {
    background(color(#5D5A5A));
    textFont(g, 36);
    fill(255);
    text("Start Game", 650, 490);
    textFont(m, 72);
    fill(255);
    text("Warlords: Call to Prosthetic Limbs", 250, 70);
    textFont(i, 36);
    fill(255);
    text("Pick a race by pressing numbers 0-6", 450, 600);
  }

  public int mouseClicked(String s, Data n) {
    if ((mouseX  > 650 && mouseX< 830) && (mouseY  > 470 && mouseY < 510  ) && mousePressed) {
      n.setRace(s);
      return 0;
    } else {
      return 2;
    }
  }
  

}