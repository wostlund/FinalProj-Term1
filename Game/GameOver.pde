public class GameOver {
  PFont g, m;

  GameOver() {
    g = createFont("Arial", 16, true);
    m = createFont("Arial", 16, true);
  }

  public void endGame() {
    background(0);
    textFont(g, 36);
    fill(255);
    text("Game Over", 650, 490);
    textFont(m, 36);
    fill(255);
    text("Main Menu", 685, 70);
  }
}