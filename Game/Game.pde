int y = 280;
int[][] board = new int[8][100];  
  void setup(){


    size(800, 640);
  }
  
  public void changeY(){
    if (keyPressed){
      if (key == CODED){
        if (keyCode == UP){
        y -= 80;
      }
      if(keyCode == DOWN){
        y += 80;
      }
    }
    }
      if(y > 580){
        y = 40;
      }
      if(y < 40){
        y = 600;
      }
    
  }
        
  
  
  void draw(){
    changeY();
    background(134);
    rect(0,y, 80, 80);
  }
    
  
  
  