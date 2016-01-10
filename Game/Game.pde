int y = 420, choice = 0;
int yUp = 6, yDown = 6;
int choiceR = 6, choiceL = 6;
Unit[][] board = new Unit[8][100];
PShape choice1, chooser, choice2, choice3; //we'll add more if implement the shop
ArrayList<PShape> choices = new ArrayList<PShape>();

//ArrayList[][] board = new ArrayList[8][100];  
void setup(){
    choice1 = createShape(ELLIPSE, 40, 70, 60, 60);
    choice2 = createShape(ELLIPSE, 110, 70, 60, 60);
    choice3 = createShape(ELLIPSE, 180, 70, 60, 60);
    choices.add(choice1);
    choices.add(choice2);
    choices.add(choice3);
    chooser = createShape(RECT, 0, 0, 80, 80);
    background(132, 180, 10);
    size(1440, 980);
  }
  
   /*void fillArray(){
    for(int i = 0; i < board.length ; i++){
      for(int k = 0; k < board[i].length; k ++){
        board[i][k].add(0);
      }
    }
  }*/
  
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
  }
  
  
    public void spawn(){
    double pos = (y-180) / 80; 
    if(keyPressed){
      if(key == ENTER || key == RETURN){ // for some reason the enter key is not triggerring 
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
        board[(int)pos][0] = (soldier);
      }
    }
  }
  
  
  public void displaySoldier(){
      for(int i = 0; i < board.length; i++){
        if(board[i][0] instanceof Unit){
          board[i][0].setYcor(i*80 + 220);
        board[i][0].display();
        board[i][0].move();
      }
      }
  }
        
  
  
    void draw(){
      background(132, 180, 10);
      chooser();
      colorIndicator();
      shape(choice1);
      shape(choice2);
      shape(choice3);
      shape(chooser, 0, y);
      changeY();
      spawn();
      displaySoldier();
    }

  
  /*public static void main(String[]args){
    spawn();
    int i = 0;
    while (i < board.length){
      System.out.println(board[i][0]);
      i ++;
    }*/
      
    
  
  
  
    
  
  
  
