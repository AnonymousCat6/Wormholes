public class Bullet{
  int x;
  int y;
  int speed = 10;
  int wid = 30;
  int high = 20;
  boolean lor;
  boolean col;
  Bullet(int xpos,int ypos, boolean l, boolean c){
    x=xpos;
    y=ypos;
    lor=l;
    col=c;
  }
  void shoot(){
    if(lor==true){
      x+=speed;
    }
    else {
      x-=speed;
    } 
    if(x>width+wid/2){
      toRemove.add(this);
    }
    else if(x<0+wid/2){
      toRemove.add(this);
    }
    if(col==true){
      fill(155,0,155);
      ellipse(x,y,wid,high);
      fill(200,200,200);
    }
    if(col==false){
      fill(255,155,0);
      ellipse(x,y,wid,high);
      fill(200,200,200);
    }
  }
}
