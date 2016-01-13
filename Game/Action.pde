public class Action{
 // this class will facilitate the many calculationa we have to do for stuff like attacking.;
 // the game class is too cluttered. Stuff from there should be moved here.;
 // We need to make more classes and stop putting everything in game right away;
 //Mr. K wants us to do this and if we wait it will be a hassle to move anything; 
 
 //int [][] ary;
 Unit soldier;
 
 /*public Action(int [][] bob){
   int [][] ary = new int[bob.length][bob[0].length];
   for(int i = 0; i < bob.length; i ++){
     for(int j; j < bob[i].length; j ++;{
       ary[i][k] = bob[i][k];
     }
   }
 }*/
 
 
 public Action(Unit p){
   soldier = p;
 }
 
 public int maxXVal(Unit [] yra){ // just placeholder for now. Tried to make this earlier in artificial but ran into 
 //trouble I think because of comparing floats
   yra [0] = soldier; //placeholder
   return 0; // this will be the column 
 }
   
 
 public boolean canAttack(Unit [][] enemy){
   // make row variable int unit so can do soldier.getRow
   //next variable just placeholder for row #
   int row  = 3;
   int ecol = maxXVal(enemy[row]);
   if(soldier.getXcor() - enemy[row][ecol].getXcor() <= soldier.getRange()){
     return true;
   }
   return false;
 }
   
   
     
  
  
}