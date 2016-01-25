public class Home {
  PFont g, m, i, j;
  int rem = 0;
  private String [] ra = {"Men","Orcs of the North", "Orcs of the South", "Mountain Trolls", "Forest Elves", "Men of the West", "Night Elves"};
  Home() {
    g = createFont("Arial", 16, true);
    m = createFont("Arial", 16, true);
    i = createFont("Arial", 16, true);
    j = createFont("Arial", 16, true);
  }

  public void displayMenu() {
    String s = "You have currently selected" + ra[rem];
    background(0, 0, 256);
    textFont(g, 36);
    fill(255);
    text("Start Game", 650, 490);
    textFont(m, 72);
    fill(255);
    text("Warlords: Call to Prosthetic Limbs", 250, 70);
    textFont(i, 36);
    fill(255);
    text("Pick a class by pressing numbers 0-6", 500, 700);
    textFont(j, 36);
    fill(255);
    text(s, 500, 800);
  }

  public int mouseClicked() {
    if ((mouseX  > 650 && mouseX< 830) && (mouseY  > 470 && mouseY < 510  ) && mousePressed) {
      return 0;
    } else {
      return 2;
    }
  }
  
  public int selClass(){
    if (keyPressed && key == '0'){
      rem = 0;
      return 0;
    }
     if (keyPressed && key == '1'){
       rem = 1;
      return 1;
    }
     if (keyPressed && key == '2'){
       rem = 2;
      return 2;
    }
     if (keyPressed && key == '3'){
       rem = 3;
      return 3;
    }
     if (keyPressed && key == '4'){
       rem = 4;
      return 4;
    }
     if (keyPressed && key == '5'){
       rem = 5;
      return 5;
    }
     if (keyPressed && key == '6'){
       rem = 6;
      return 6;
    }
    rem = 0;
    return 0;
  }
}