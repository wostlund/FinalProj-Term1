public boolean playing=true;
int y = 420, choice = 0, echoice;
int timer = 0, etimer = 0;
boolean init = false, einit = false;
int yUp = 6, yDown = 6, ent = 6;
int choiceR = 6, choiceL = 6;
Unit[][] board = new Unit[8][100];
Unit[][] eboard = new Unit[8][100];
PShape choice1, chooser, play, choice2, choice3; //we'll add more if we implement the shop
ArrayList<PShape> choices = new ArrayList<PShape>();
int playerScore = 25, enemyScore = 25;
int [] score = new int[50];
PFont f, s, p;
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
void setup(){
    fillScore();
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
    f = createFont("Arial",16,true);
    s = createFont("Arial",16,true);
    p = createFont("Arial",16,true);
  }
  
   /*void fillArray(){
    for(int i = 0; i < board.length ; i++){
      for(int k = 0; k < board[i].length; k ++){
        board[i][k].add(0);
      }
    }
  }*/
  
  public void fillScore(){
    for(int i = 0; i < score.length; i++){
      if(i < playerScore){
        score[i] = 1;
      }
      else{
        score[i] = 2;
      }
    }
  }
  
  
  public void chooser(){
    if (keyPressed){
      if (key == CODED){
        if (keyCode == RIGHT){
          choiceR+=1;
        }
        if(keyCode == LEFT){
          choiceL+=1;
        }
      }
      if(choiceR == 7){
        choice++;
        choiceR = 0;
      }else if (choiceL == 7){
        choice--;
        choiceL = 0;
      }
    }
    if(choice == 3){
      choice = 0;
    }
    if(choice == -1){
      choice = 2;
    }
  }
  
  public void colorIndicator(){
    for(int i=0; i<choices.size(); i++){
      choices.get(i).setFill(color(255)); 
    }
    choices.get(choice).setFill(color(190, 90, 0));
  }
  
  public void changeY(){
    if (keyPressed){
      if (key == CODED){
        if (keyCode == UP){
          yDown+=1;
        }
        if(keyCode == DOWN){
          yUp+=1;
        }
      }
      if(yUp == 7){
        y+=80;
        yUp = 0;
      }else if (yDown == 7){
        y-=80;
        yDown = 0;
      }
    }
    if(y > 740){
      y=180;
    }
    if(y < 180){
      y=740;
    }
    
  }
        
  void keyReleased(){
      yUp = 6;
      yDown = 6;
      choiceR=6;
      choiceL=6;
  }
  
  
    public void playerSpawn(){
    double pos = (y-180) / 80; 
    if(keyPressed){
      if(key == ENTER || key == RETURN){ 
        ent += 1;}
    }
    if(ent >= 7){ // will improve delay later / vary based on unit
        Unit soldier = new Melee();
        switch(choice){ //this is like a cond statement in Scheme
          case 0:
            if(timer >= 160){
              soldier = new Melee(40, 420, 5, 40, 130, 20, "Men", "Spearman", true);
              init = true;
              timer=0;
            }
            break;
          case 1:
            if(timer >= 240){
              soldier = new Melee(40, 420, 3, 100, 100, 35, "Men", "Swordsman", true);
              init = true;
              timer = 0;
            }
            break;
          default:
            if(timer >= 200){
              soldier = new Range(40, 420, 3, 100, 100, 35, "Men", "Archer", true);
              init = true;
              timer = 0;
            }
            break;
        }
        //shape(soldier);
        if(init){
         int k = 0;
          for(int i = 0; i < board[(int)pos].length; i++){
           if(board[(int)pos][i] == null && k == 0){
            board[(int)pos][i] = (soldier);
          k += 1;
           }
          }
         init = false;
        }
        ent = 0;
      }
    }
    
    
    public void enemySpawn(){  
    Artificial w = new Artificial(board);    
    Unit soldier = new Melee();
    echoice = w.pickClass();
        switch(echoice){
          case 0:
            if(etimer >= 160){
              soldier = new Melee(700, 420, 5, 40, 130, 20, "Men", "Spearman", false);
              einit = true;
              etimer=0;
            }
            break;
          case 1:
            if(etimer >= 240){
              soldier = new Melee(700, 420, 3, 100, 100, 35, "Men", "Swordsman", false);
              einit = true;
              etimer = 0;
            }
            break;
          default:
            if(etimer >= 200){
              soldier = new Range(700, 420, 3, 100, 100, 35, "Men", "Archer", false);
              einit = true;
              etimer = 0;
            }
            break;
        }
        //shape(soldier);
        if(einit){
         int k = 0;
          for(int i = 0; i < eboard[w.decide()].length; i++){
           int x = w.decide();
           if(eboard[x][i] == null && k == 0){
            eboard[x][i] = (soldier);
            //println(w.decide());
          k += 1;
           }
          }
         einit = false;
        }
      
    }    
        
  public void displaySoldier(){
      for(int i = 0; i < board.length; i++){
        for(int k = 0; k < board[i].length; k ++){ //
        if(board[i][k] instanceof Unit){//
          board[i][k].setYcor(i*40+110);//
          board[i][k].setupDisplay();
          board[i][k].display();//
          board[i][k].move();//
        if(board[i][k].getXcor() >= 750){ //I don't know why it's so low but it works
          board[i][k] = null;
          playerScore ++;
          enemyScore --;
      }
        }//
      }
  }
  }
  
  
   public void displayEnemy(){
      for(int i = 0; i < eboard.length; i++){
        for(int k = 0; k < eboard[i].length; k ++){ //
        if(eboard[i][k] instanceof Unit){//
          eboard[i][k].setYcor(i*40+110);
          eboard[i][k].setupDisplay();
          eboard[i][k].display();//
          eboard[i][k].move();//
        if(eboard[i][k].getXcor() <= 0){ //I don't know why it's so low but it works
          eboard[i][k] = null;
          playerScore --;
          enemyScore ++;
      }
        }//
      }
  }
  }
  
        
  public void displayScore(){ 
    for(int i = 0; i < score.length; i ++){
      if(score[i] == 1){
        fill(0,0,256);
        rect(100 + (i * 25),0,25,10);
      }
      else{fill(256,0,0);
           rect(100+ (i *25),0,25,10);}

    }
  }
  
  public void mouseClicked(){
     if((mouseX-720)*(mouseX-720)+(mouseY-70)*(mouseY-70)<2500){
       if(playing){
         play.setFill(color(#F52811));
         background(0,0,0);
         textFont(f,36);
         fill(255);
         text("Paused",650,490);
         textFont(s,36);
         fill(255);
         text("Play",685,70);
         playing=false;
       }else{
         playing=true;
       }
       if(!playing){
         noLoop(); 
       }else{
         play.setFill(color(#11F51E));
         loop(); 
         
       }
     }
  }
  
    void draw(){ //player colors are now controllable
      background(132, 180, 10);
      chooser();
      colorIndicator();
      shape(choice1);
      shape(choice2);
      shape(choice3);
      shape(play);
      shape(chooser, 0, y);
      textFont(p,30);
      fill(255);
      text("Pause",680,80);
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

  public void setChooserColor(){
    if ((choice == 0 && timer >= 160) || (choice == 1 && timer >= 240) || (choice == 2 && timer >= 200)){
      chooser.setFill(color(0, 0, 256));
    }else{
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
      
    
  
  
  
    
  
  
  