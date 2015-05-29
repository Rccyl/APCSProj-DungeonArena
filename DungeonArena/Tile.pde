import java.util.*;

class Tile{
  
  protected boolean isWall;
  protected int x,y;
  protected Random r;
  protected int tileSize;
  
  protected ArrayList<MapObject> drops;
  
  Tile(int n,int tileSize){
    this.tileSize=tileSize;
    if(n!=0){
      isWall=false;
      r = new Random();
      drops=new ArrayList<MapObject>();
      if(r.nextInt(15)==0){
        MapObject drop = new MapObject(x,y,tileSize);
        drops.add(drop);
      }
    }else{
      isWall=true;
    }
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
  
  boolean isWall(){
    return isWall;
  }
  
  void draw(){
    imageMode(CORNER);
    if(isWall){
      PImage wall=loadImage("wall.png");
      image(wall,x,y,tileSize,tileSize);
    }else{
      PImage floor=loadImage("floor.png");
      image(floor,x,y,tileSize,tileSize);
      for(MapObject o:drops){
        o.draw();
      }
    } 
  }
}


