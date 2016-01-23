public class Win {
  PFont g, m;

  Win() {
    g = createFont("Arial", 16, true);
    m = createFont("Arial", 16, true);
  }

  public void winGame() {
    background(0);
    textFont(g, 36);
    fill(255);
    text("You Win", 650, 490);
    textFont(m, 36);
    fill(255);
    text("Proceed", 685, 70);
  }
}