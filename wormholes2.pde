int gone;
int direction;
boolean bullet;
boolean wait;
int bulletx;
int bullety;
int x;
int y;
void settings(){
  size(700,700);
x=15;
y=height-15;
}
void setup(){
ellipse(x,y,30,30);
background(0);
bullet=false;
gone =1;
}

void draw(){
if(wait){
  delay(500);
  y=y+50;
  background(0);
  ellipse(x,y,30,30);
  wait=false;
}
if(gone==1){
  background(0);
  ellipse(x,y,30,30);
}
else{
  background(0);
}
if(bullet && bulletx<width && bulletx>15){
  if(direction==1){
  bulletx=bulletx+10;
  ellipse(bulletx,bullety,20,10);
  }
  else if(direction==2){
  bulletx=bulletx-10;
  ellipse(bulletx,bullety,20,10);
  }
}
}
void keyPressed(){
  switch(key){
    case('d'):
    x=x+10;
    direction=1;
    break;
    case('a'):
    x=x-10;
    direction=2;
    break;
    case('w'):
    y=y-50;
    background(0);
    ellipse(x,y,30,30);
    wait=true;
    break;
    case('q'):
    bulletx=x;
    bullety=y;
    bullet=true;
    break;
    case('g'):
    if(gone==1){
      gone=2;
    }
    else{
      gone=1;
    }
    break;
    case('r'):
    x=15;
    y=height-15;
    background(0);
    ellipse(x,y,30,30);
    gone=1;
    bulletx=width;
  }
}
