boolean wait;
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
}

void draw(){
if(wait){
  delay(500);
  y=y+50;
  background(0);
  ellipse(x,y,30,30);
  wait=false;
}
}
void keyPressed(){
  switch(key){
    case('d'):
    x=x+10;
    background(0);
    ellipse(x,y,30,30);
    break;
    case('a'):
    x=x-10;
    background(0);
    ellipse(x,y,30,30);
    break;
    case('w'):
    y=y-50;
    background(0);
    ellipse(x,y,30,30);
    wait=true;
  }
}
