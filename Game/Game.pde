int y = 420, choice = 0;
int yUp = 6, yDown = 6, ent = 6;
int choiceR = 6, choiceL = 6;
Unit[][] board = new Unit[8][100];
PShape choice1, chooser, choice2, choice3; //we'll add more if we implement the shop
ArrayList<PShape> choices = new ArrayList<PShape>();
int playerScore = 25, enemyScore = 25;
int [] score = new int[50];


//ArrayList[][] board = new ArrayList[8][100];  
void setup(){
    fillScore();
    choice1 = createShape(ELLIPSE, 40, 70, 60, 60);
    choice2 = createShape(ELLIPSE, 110, 70, 60, 60);
    choice3 = createShape(ELLIPSE, 180, 70, 60, 60);
    choices.add(choice1);
    choices.add(choice2);
    choices.add(choice3);
    chooser = createShape(RECT, 0, 0, 80, 80);
    background(132, 180, 10);
    size(1440, 980);
    for(int i = 0; i <score.length; i++){
      println(score[i]);
      println(i);
    }
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
  
  
    public void spawn(){
    double pos = (y-180) / 80; 
    if(keyPressed){
      if(key == ENTER || key == RETURN){ 
        ent += 1;}
    }
    if(ent == 7){ // will improve delay later / vary based on unit
        Unit soldier;
        switch(choice){ //this is like a cond statement in Scheme
          case 0:
            soldier = new Melee(40, 420, 5, 40, 130, 20, "Men", "Spearman");
            break;
          case 1:
            soldier = new Melee(40, 420, 3, 100, 100, 35, "Men", "Swordsman");
            break;
          default:
            soldier = new Range(40, 420, 3, 100, 100, 35, "Men", "Archer");
        }
        //shape(soldier);
         int k = 0;
        for(int i = 0; i < board[(int)pos].length; i++){
          if(board[(int)pos][i] == null && k == 0){
        board[(int)pos][i] = (soldier);
        k += 1;
          }
        }
        ent = 0;
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
  
        
  public void displayScore(){ // something appears to be wrong with this
    for(int i = 0; i < score.length; i ++){
      if(score[i] == 1){
        fill(0,0,256);
        rect(100 + (i * 25),0,25,10);
      }
      else{fill(256,0,0);
           rect(100+ (i *25),0,25,10);}

    }
  }
  
  
    void draw(){ //player colors are now controllable
      background(132, 180, 10);
      chooser();
      colorIndicator();
      shape(choice1);
      shape(choice2);
      shape(choice3);
      shape(chooser, 0, y);
      spawn();
      displaySoldier();
      displayScore();
      changeY();
      fillScore();
    }

  
  /*public static void main(String[]args){
    spawn();
    int i = 0;
    while (i < board.length){
      System.out.println(board[i][0]);
      i ++;
    }*/
      
    
  
  
  
    
  
  
  