public class Complete{

  PFont g, m;

    Complete(){
    g = createFont("Arial", 16, true);
    m = createFont("Arial", 16, true);
  }

  public void winGame() {
    background(0);
    textFont(g, 36);
    fill(255);
    text("You have defeated all your enemies", 650, 490);
    textFont(m, 36);
    fill(255);
    text("New Game", 685, 70);
  }

}