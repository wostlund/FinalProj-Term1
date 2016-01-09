int y = 280;
int yUp = 6, yDown = 6;
int[][] board = new int[8][100];  
  void setup(){


    size(1080, 720);
  }
  
  public void changeY(){
    if (keyPressed){
      if (key == CODED){
        if (keyCode == UP){
          yDown+=1;//Obviously it should be the other way but it reverses the instructions and moves down instead of up
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
  
  void draw(){
    changeY();
    background(134);
    rect(0,y, 80, 80);
  }
    
  
  
  