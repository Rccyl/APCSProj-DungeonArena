class Equiptment extends Item {

  protected Stats stats;

  Equiptment(String name, int setType, int xi, int yi, int size) {
    super("Equiptment", setType, xi, yi, size);
    stats = new Stats();
  }

  int getSTR() {
    return stats.getSTR();
  }

  int getDEX() {
    return stats.getDEX();
  }

  int getINT() {
    return stats.getINT();
  }

  void setSTR(int s) {
    stats.setSTR(s);
  }

  void setDEX(int d) {
    stats.setDEX(d);
  }

  void setINT(int i) {
    stats.setINT(i);
  }

  void applyBuffs(Stats base) {
    base.setSTR(base.getSTR() + stats.getSTR());
    base.setDEX(base.getDEX() + stats.getDEX());
    base.setINT(base.getINT() + stats.getINT());
  }

}

