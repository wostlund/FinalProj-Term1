int y = 280;
int yUp = 6, yDown = 6;
Unit[][] board = new Unit[8][100];

//ArrayList[][] board = new ArrayList[8][100];  
void setup(){
    background(132, 180, 10);
    size(1080, 720);
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
    if(y > 600){
      y = 40;
    }
    if(y < 40){
      y = 600;
    }
    
  }
        
  void keyReleased(){
      yUp = 6;
      yDown = 6;
  }
  
  
    public void spawn(){
    double pos = ((y / 80) + .5) -1 ; 
    if(keyPressed){
      if(key == ENTER || key == RETURN){ // for some reason the enter key is not triggerring 
        Melee soldier = new Melee(5, 40, 130, 20, "Men", "Spearman");
        board[(int)pos][0] = (soldier);
      }
    }
  }
  
  
  public void displaySoldier(){
      for(int i = 0; i < board.length; i ++){
        if(board[i][0] instanceof Unit){
        ellipse(40, ((i) * 80 + 160), 15, 15); 
      }
      }
  }
        
  
  
    void draw(){
    changeY();
    spawn();
    background(132, 180, 10);
    rect(0,y, 80, 80);
    displaySoldier();
     if(keyPressed){
      if(key == 13){
         ellipse(100,100, 15, 15);
      }
     }

  }
  
  /*public static void main(String[]args){
    spawn();
    int i = 0;
    while (i < board.length){
      System.out.println(board[i][0]);
      i ++;
    }*/
      
    
  
  
  