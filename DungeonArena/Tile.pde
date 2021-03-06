class Tile {

  protected boolean isWall;
  protected Being occupant;
  protected int x, y;
  protected Random r = new Random();
  protected int tileSize;
  protected ArrayList<Item> drops = new ArrayList<Item>();
  PImage D;

  Tile(int n, int tileSize, PImage W) {
    this.tileSize=tileSize;
    isWall=(n==0);
    setImage(W);
  }

  void setImage(PImage src) {
    D=src;
  }

  PImage getImage() {
    return D;
  }

  void setX (int newX) {
    x = newX;
  }

  void setY (int newY) {
    y = newY;
  }

  void setXY (int newX, int newY) {
    setX(newX);
    setY(newY);
  }

  boolean isWall() {
    return isWall;
  }

  Being occupant() {
    return occupant;
  }

  void addDrop(Item i) {
    drops.add(i);
  }

  Item removeDrop() {
    if (drops.size() > 0) {
      return drops.remove(drops.size() - 1);
    }
    return null;
  }

  Item getDrop() {
    if (drops.size() > 0) {
      return drops.get(drops.size() - 1);
    }
    return null;
  }

  void setOccupant(Being b) {
    occupant = b;
  }

  void draw() {
    imageMode(CORNER);
    image(D, x*tileSize, y*tileSize, tileSize, tileSize);
    if (!isWall() && drops.size() > 0) {
      drops.get(drops.size() - 1).setXY(x, y);
      drops.get(drops.size() - 1).draw();
    }
    if (occupant != null) {
      occupant.draw(x, y);
    }
  }
}

