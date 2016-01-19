public boolean playing;
int y, choice, echoice;
int timer, etimer;
boolean init, einit;
int yUp, yDown, ent;
int choiceR, choiceL;
Unit[][] board;
Unit[][] eboard;
PShape choice1, chooser, play, choice2, choice3; //we'll add more if we implement the shop
ArrayList<PShape> choices = new ArrayList<PShape>();
PShape echoice1, echoice2, echoice3;
ArrayList<PShape> echoices = new ArrayList<PShape>();
int playerScore, enemyScore;
int [] score;
AttackChoice m;
AttackChoice em;
PFont f, s, p, g;
boolean eattacked;
int mode;
Data unitTraits; 
Shop shop;
//int decide;
//int [] dec;
/*
Our code got very cluttered so I'm going to make this glossary to make it easier for both of us
 Fuction            |     Purpose
 -------------------------------------------------
 setup()            |     "Sets up" the screen for the game to begin
 fillScore()        |     Fills the score bar based on the numerical enemy and player score
 chooser()          |     Checks the speed at which the variable "choice" changes and allows the color of the selector to warp
 colorIndicator()   |     Colors the selected unit based on the variable "choice"
 changeY()          |     Allows the user the change lanes to send units into
 keyReleased()      |     Makes the controls quick and responsive by setting variables to a given value
 playerSpawn()            |     Created soldiers triggered by the enter button
 displaySoldier()   |     Allows the user to see each individual unit
 displayScore()     |     Fills in the colors of the scorebar
 mouseClicked()     |     Triggers the pause/play button
 draw()             |     Calls every function and displays the game into the processing graphics window
 setColorChooser()  |     Changes the color of the lane indicator when soldiers are ready to spawn
 */


//ArrayList[][] board = new ArrayList[8][100];  
void setup() {
  playing = false;
  mode = 2;
  y = 420;
  choice = 0;
  echoice = 0;
  timer = 0;
  etimer = 0;
  init = false;
  einit = false;
  yUp = 6;
  yDown = 6;
  ent = 6;
  choiceR = 6;
  choiceL = 6;
  board = new Unit[8][10];
  eboard = new Unit[8][10];
  playerScore = 25;
  enemyScore = 25;
  score = new int[50];
  m = new AttackChoice(eboard);
  em = new AttackChoice(board);
  eattacked = false;
  unitTraits = new Data();
  shop = new Shop();
  fillScore();
  echoice1 = createShape(ELLIPSE, 1400, 70, 60, 60);
  echoice2 = createShape(ELLIPSE, 1330, 70, 60, 60);
  echoice3 = createShape(ELLIPSE, 1260, 70, 60, 60);
  echoices.add(echoice1);
  echoices.add(echoice2);
  echoices.add(echoice3);
  choice1 = createShape(ELLIPSE, 40, 70, 60, 60);
  choice2 = createShape(ELLIPSE, 110, 70, 60, 60);
  choice3 = createShape(ELLIPSE, 180, 70, 60, 60);
  play = createShape(ELLIPSE, 720, 70, 100, 100);
  play.setFill(color(#11F51E));
  choices.add(choice1);
  choices.add(choice2);
  choices.add(choice3);
  chooser = createShape(RECT, 0, 0, 80, 80);
  background(132, 180, 10);
  size(1440, 980);
  f = createFont("Arial", 16, true);
  s = createFont("Arial", 16, true);
  p = createFont("Arial", 16, true);
  g = createFont("Arial", 16, true);
}

/*void fillArray(){
 for(int i = 0; i < board.length ; i++){
 for(int k = 0; k < board[i].length; k ++){
 board[i][k].add(0);
 }
 }
 }*/

public void fillScore() {
  for (int i = 0; i < score.length; i++) {
    if (i < playerScore) {
      score[i] = 1;
    } else {
      score[i] = 2;
    }
  }
}


public void chooser() {
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == RIGHT) {
        choiceR+=1;
      }
      if (keyCode == LEFT) {
        choiceL+=1;
      }
    }
    if (choiceR == 7) {
      choice++;
      choiceR = 0;
    } else if (choiceL == 7) {
      choice--;
      choiceL = 0;
    }
  }
  if (choice == 3) {
    choice = 0;
  }
  if (choice == -1) {
    choice = 2;
  }
}

public void colorIndicator() {
  for (int i=0; i<choices.size(); i++) {
    choices.get(i).setFill(color(255));
  }
  choices.get(choice).setFill(color(190, 90, 0));
}

public void ecolorIndicator() {
  for (int i=0; i<echoices.size(); i++) {
    echoices.get(i).setFill(color(255));
  }
  echoices.get(echoice).setFill(color(190, 90, 0));
}

public void changeY() {
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) {
        yDown+=1;
      }
      if (keyCode == DOWN) {
        yUp+=1;
      }
    }
    if (yUp == 7) {
      y+=80;
      yUp = 0;
    } else if (yDown == 7) {
      y-=80;
      yDown = 0;
    }
  }
  if (y > 740) {
    y=180;
  }
  if (y < 180) {
    y=740;
  }
}

void keyReleased() {
  yUp = 6;
  yDown = 6;
  choiceR=6;
  choiceL=6;
}


public void playerSpawn() {
  double pos = (y-180) / 80; 
  if (keyPressed) {
    if (key == ENTER || key == RETURN) { 
      ent += 1;
    }
  }
  if (ent >= 7) { // will improve delay later / vary based on unit
    Unit soldier = new Melee();
    switch(choice) { //this is like a cond statement in Scheme
    case 0:
      if (timer >= unitTraits.getSpawnTime(0)) {
        soldier = new Melee(40, 420, unitTraits.getSpeed(0), unitTraits.getArmour(0), 
          unitTraits.getRange(0), unitTraits.getDamage(0), unitTraits.getRace(), unitTraits.getName(0), true, 0);
        init = true;
        timer=0;
      }
      break;
    case 1:
      if (timer >= unitTraits.getSpawnTime(1)) {
        soldier = new Melee(40, 420, unitTraits.getSpeed(1), unitTraits.getArmour(1), 
          unitTraits.getRange(1), unitTraits.getDamage(1), unitTraits.getRace(), unitTraits.getName(1), true, 0);
        init = true;
        timer = 0;
      }
      break;
    case 2:
      if (timer >= unitTraits.getSpawnTime(2)) {
        soldier = new Range(40, 420, unitTraits.getSpeed(2), unitTraits.getArmour(2), 
          unitTraits.getRange(2), unitTraits.getDamage(2), unitTraits.getRace(), unitTraits.getName(2), true, 0);
        init = true;
        timer = 0;
      }
      break;
    }
    //shape(soldier);
    if (init) {
      int k = 0;
      for (int i = 0; i < board[(int)pos].length; i++) {
        if (board[(int)pos][i] == null && k == 0) {
          board[(int)pos][i] = (soldier);
          k += 1;
        }
      }
      init = false;
    }
    ent = 0;
  }
}


public void enemySpawn() {  
  Artificial w = new Artificial(board, eboard);    
  Unit soldier = new Melee();
  int decide = (int)Math.random() * 2;
  int [] dec = w.betterDecide(eboard);
  if (decide == 0 && eattacked == false) {
    echoice = dec[1];
    eattacked = true;
  }
  if (decide == 1 && eattacked == false) {
    echoice = w.pickClass();
    eattacked = true;
  }
  if (w.isEmpty()){
    echoice = (int) Math.random() * 3;
  }
  switch(echoice) {
  case 0:
    if (etimer >= 210) {
      soldier = new Melee(700, 420, 5, 40, 130, 20, "Men", "Spearman", false, 0);
      einit = true;
      etimer=0;
    }
    break;
  case 1:
    if (etimer >= 290) {
      soldier = new Melee(700, 420, 3, 100, 100, 35, "Men", "Swordsman", false, 0);
      einit = true;
      etimer = 0;
    }
    break;
  default:
    if (etimer >= 250) {
      soldier = new Range(700, 420, 3, 100, 100, 35, "Men", "Archer", false, 0);
      einit = true;
      etimer = 0;
    }
    break;
  }
  //shape(soldier);
  if (einit) {
    eattacked = false;
    int k = 0;
    if (decide == 0) {
      for (int i = 0; i < eboard[dec[0]].length; i++) {
        int x = dec[0];
        if (eboard[x][i] == null && k == 0) {
          eboard[x][i] = (soldier);
          //println(w.decide());
          k += 1;
        }
      }
    } else {
      for (int i = 0; i < eboard[dec[0]].length; i++) {
        int x = w.decide();
        if (eboard[x][i] == null && k == 0) {
          eboard[x][i] = (soldier);
          //println(w.decide());
          k += 1;
        }
      }
    }

    einit = false;
  }
}    

public void displaySoldier() {
  for (int i = 0; i < board.length; i++) {
    for (int k = 0; k < board[i].length; k ++) { //
      if (board[i][k] instanceof Unit) {//
        board[i][k].setYcor(i*40+110);//
        board[i][k].setLane(i);
        board[i][k].setupDisplay();
        board[i][k].display();//
        board[i][k].move(eboard);//
        if (board[i][k].getXcor() >= 750) { //I don't know why it's so low but it works
          board[i][k] = null;
          playerScore ++;
          enemyScore --;
        }
      }
    }
  }
  if (playerScore >= 50) {
    playing = false;
    timer = 0;
    mode = 4;
  }
}


public void displayEnemy() {
  for (int i = 0; i < eboard.length; i++) {
    for (int k = 0; k < eboard[i].length; k ++) { //
      if (eboard[i][k] instanceof Unit) {//
        eboard[i][k].setYcor(i*40+110);
        eboard[i][k].setLane(i);
        eboard[i][k].setupDisplay();
        eboard[i][k].display();//
        eboard[i][k].move(board);//
        if (eboard[i][k].getXcor() <= 0) { //I don't know why it's so low but it works
          eboard[i][k] = null;
          playerScore --;
          enemyScore ++;
        }
      }//
    }
  }
  if (enemyScore >= 50) {
    mode =1;
    playing = false;
  }
}


public void displayScore() { 
  for (int i = 0; i < score.length; i ++) {
    if (score[i] == 1) {
      fill(0, 0, 256);
      rect(100 + (i * 25), 0, 25, 10);
    } else {
      fill(256, 0, 0);
      rect(100+ (i *25), 0, 25, 10);
    }
  }
}

public void mouseClicked() {
  if ((mouseX-720)*(mouseX-720)+(mouseY-70)*(mouseY-70)<2500) {
    if (playing) {
      play.setFill(color(#F52811));
      background(0, 0, 0);
      textFont(f, 36);
      fill(255);
      text("Paused", 650, 490);
      textFont(s, 36);
      fill(255);
      text("Play", 685, 70);
      textFont(g, 36);
      fill(255);
      text("Quit", 685, 600);
      if ((mouseX  > 675 && mouseX< 800) && (mouseY  > 570 && mouseY < 630  )) {
        //setup();
        mode = 2;
        playing = false;
      }


      playing=false;
    } else {
      playing=true;
    }
    if (!playing) {
      noLoop();
    } else {
      play.setFill(color(#11F51E));
      loop();
    }
  }
}

void draw() { //player colors are now controllable
  if (mode == 0) {
    playing = true;
    m.setData(eboard);
    em.setData(board);
    m.kill();
    em.kill();
    background(132, 180, 10);
    chooser();
    colorIndicator();
    ecolorIndicator();
    shape(echoice1);
    shape(echoice2);
    shape(echoice3);
    shape(choice1);
    shape(choice2);
    shape(choice3);
    shape(play);
    shape(chooser, 0, y);
    textFont(p, 30);
    fill(255);
    text("Pause", 680, 80);
    playerSpawn();
    enemySpawn();
    displaySoldier();
    displayEnemy();
    displayScore();
    changeY();
    fillScore();
    setChooserColor();
    timer ++;
    etimer ++;
  }
  if (mode == 1) {
    GameOver g = new GameOver();
    g.endGame();
  }
  if (mode == 2) {
    playing = false;
    Home d = new Home();
    d.displayMenu();
    mode = d.mouseClicked();
  }

  boolean k = true;
  if (mode == 4) {
  shop.shopSetup();
  shop.shopDraw();
  shop.mouseClicked();
  }
}

public void setChooserColor() {
  if ((choice == 0 && timer >= unitTraits.getSpawnTime(0)) || (choice == 1 && timer >= unitTraits.getSpawnTime(1)) ||
    (choice == 2 && timer >= unitTraits.getSpawnTime(2))) {
    chooser.setFill(color(0, 0, 256));
  } else {
    chooser.setFill(color(255));
  }
}

/*public static void main(String[]args){
 spawn();
 int i = 0;
 while (i < board.length){
 System.out.println(board[i][0]);
 i ++;
 }*/