int y = 420, choice = 0;
int yUp = 6, yDown = 6;
Unit[][] board = new Unit[8][100];
PShape choice1, chooser, choice2, choice3;

//ArrayList[][] board = new ArrayList[8][100];  
void setup(){
    choice1 = createShape(ELLIPSE, 40, 70, 60, 60);
    choice2 = createShape(ELLIPSE, 110, 70, 60, 60);
    choice3 = createShape(ELLIPSE, 180, 70, 60, 60);
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
        Melee soldier = new Melee(5, 40, 130, 20, "Men", "Spearman");
        board[(int)pos][0] = (soldier);
      }
    }
  }
  
  
  public void displaySoldier(){
      for(int i = 0; i < board.length; i++){
        if(board[i][0] instanceof Unit){
        ellipse(40, ((i) * 80 + 225), 15, 15); 
      }
      }
  }
        
  
  
    void draw(){
      background(132, 180, 10);
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
      
    
  
  
  