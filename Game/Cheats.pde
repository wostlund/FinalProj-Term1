public class Cheats{
  
  public Cheats(){
  int x = 0;
  }
  
  
  public boolean win(){
    if (keyPressed && key == 'i'){
      return true;
    }
    return false;
  }
  
  public boolean lose(){
    if (keyPressed && key == 'o'){
      return true;
    }
    return false;
    
  }
  
  public boolean increaseScore(){
    if (keyPressed && key == 'p'){
      return true;
    }
    return false;
    
  }
  
  public boolean decreaseScore(){
    if (keyPressed && key == 'l'){
      return true;
    }
    return false;
    
  }
  
  public boolean makeSpecial(){
    if (keyPressed && key == 'k'){
      return true;
    }
    return false;
    
  }
  
}