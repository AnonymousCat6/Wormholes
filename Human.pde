public class Human{
 int y;
 int x;
 Human(int xpos, int ypos){
  x=xpos;
  y=ypos;
 }
 void moveright(){
  x=x+10;
 }
 void moveleft(){
  x=x-10;
 }
 void up(){
   y=y-10;
 }
 void down(){
   y=y+10;
 }
 void show(){
   ellipse(x,y,30,30);
 }
 int getX(){
   return x;
 }
 int getY(){
   return y;
 }
 void restart(){
   x=15;
   y=height-15;
 }
}
