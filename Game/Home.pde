public class Home {
  PFont g, m, i;
  
  Home() {
    g = createFont("Arial", 16, true);
    m = createFont("Arial", 16, true);
    i = createFont("Arial", 16, true);
    
  }

  public void displayMenu() {
    background(0, 0, 256);
    textFont(g, 36);
    fill(255);
    text("Start Game", 650, 490);
    textFont(m, 72);
    fill(255);
    text("Warlords: Call to Prosthetic Limbs", 250, 70);
    textFont(i, 36);
    fill(255);
    text("Pick a race by pressing numbers 0-6", 500, 700);
  }

  public int mouseClicked() {
    if ((mouseX  > 650 && mouseX< 830) && (mouseY  > 470 && mouseY < 510  ) && mousePressed) {
      return 0;
    } else {
      return 2;
    }
  }
  

}