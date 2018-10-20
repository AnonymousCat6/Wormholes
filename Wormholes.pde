Human human;
ArrayList<Bullet> bullets=new ArrayList<Bullet>();
ArrayList<Bullet> toRemove=new ArrayList<Bullet>();
boolean shoot;
boolean lor;
void settings(){
  size(400,400);
  human = new Human(15,height-15);
}
void setup(){
}
void draw(){
  background(0);
  human.show();
  for(Bullet bullet : bullets){
    bullet.shoot();
  }
  for(Bullet bullet : toRemove){
    bullets.remove(bullet);
  }
  toRemove=new ArrayList<Bullet>();
}
void keyPressed(){
  switch(key){
   case('d'):
     human.moveright();
     lor=true;
     break;
   case('a'):
     human.moveleft();
     lor=false;
     break;
   case('w'):
     human.up();
     break;
   case('s'):
     human.down();
     break;
   case('q'):
     bullets.add(new Bullet(human.getX(),human.getY(),lor, false));
     break;
   case('r'):
     human.restart();
     break;
   case('e'):
     bullets.add(new Bullet(human.getX(),human.getY(),lor, true));
     break;
  }
}
