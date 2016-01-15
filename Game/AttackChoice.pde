public class AttackChoice {

  private Unit[][]data;

  public void setData(Unit[][]x) {
    data=x;
  }

  public AttackChoice(Unit[][]x) {
    this.setData(x);
  }

  public AttackChoice() {
    this.setData(null);
  }

  public void kill() {
    Unit[][]george=data;
    for (int i=0; i<george.length; i++) {
      for (int k=0; k<george[i].length; k++) {
        if (george[i][k].getArmour()<=0) {
          george[i][k] = null;
        }
      }
    }
  }

  public float[] findMax() {
    Unit[][]jacob=data;
    float[]ans = new float[8];
    for (int i=0; i<jacob.length; i++) {
      float max = 0;
      for (int k=0; k<10; k++) {
        if (jacob[i][k]!=null) {
          if (jacob[i][k].getXcor() >= max) {
            max=jacob[i][k].getXcor();
            ans[i]=jacob[i][k].getXcor();
          }
        }
      }
    }
    return ans;
  }

  public Unit[] maxUnit() {
    Unit[][]jacob=data;
    Unit[]ans = new Unit[8];
    for (int i=0; i<jacob.length; i++) {
      Unit max = null;
      for (int k=0; k<jacob[i].length; i++) {
        max = jacob[i][k];
        float maxx = jacob[i][k].getXcor(); 
        if (jacob[i][k].getXcor() > maxx) {
          max = jacob[i][k];
          maxx = jacob[i][k].getXcor();
        }
      }
      ans[i]=max;
    }
    return ans;
  }

  public Unit[] minUnit() {
    Unit[][]jacob=data;
    Unit[]ans = new Unit[8];
    for (int i=0; i<jacob.length; i++) {
      Unit max = null;
      for (int k=0; k<jacob[i].length; k++) {
        max = jacob[i][k];
        if (jacob[i][k]!=null) {
          float maxx = jacob[i][k].getXcor(); 
          if (jacob[i][k].getXcor() < maxx) {
            max = jacob[i][k];
            maxx = jacob[i][k].getXcor();
          }
        }
      }
      if (max!=null) {
        ans[i]=max;
      }
    }
    return ans;
  }

  public float[] findMin() {
    Unit[][]jacob=data;
    float[]ans = new float[8];
    for (int i=0; i<jacob.length; i++) {
      float max = 1440;
      for (int k=0; k<10; k++) {
        if (jacob[i][k]!=null) {
          if (jacob[i][k].getXcor() <= max) {
            max=jacob[i][k].getXcor();
            ans[i]=jacob[i][k].getXcor();
          }
        }
      }
    }
    return ans;
  }

  public boolean inLane(int n) {
    for (int i=0; i<data[n].length; i++) {
      if (data[n][i]!=null) {
        return true;
      }
    }
    return false;
  }
}