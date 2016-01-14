public class Attack {
  Unit s;

  Attack(Unit w) {
    s = w;
  }

  public void pause(Unit u) {
  }

  public void kill(Unit[][]dhiraj) {
    for (int i=0; i<dhiraj.length; i++) {
      for (int k=0; k<dhiraj[i].length; k++) {
        if (dhiraj[i][k].getArmour()<=0) {
          dhiraj[i][k]=null;
        }
      }
    }
  }
}