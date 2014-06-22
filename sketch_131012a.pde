int x[] = new int[100];
int y[] = new int[100];

int red[] = new int[100];
int green[] = new int[100];
int blue[] = new int[100];

int angle[] = new int[100];
int diameter[] = new int[100];
int number = 0;

void setup(){
  size(640,480);
  background(#FFFFFF);
}

void draw(){
  background(#FFFFFF);
  
  if(mousePressed == true){
    if(number==99){
      fill(255, 0, 0);
      text("!!CAN'T ADD ON MORE THAN 100!!",mouseX,mouseY);
  }else{
  number+=1;
    x[number] = mouseX;
    y[number] = mouseY;
 
    red[number] = int(random(0,255));
    green[number] = int(random(0,255));
    blue[number] = int(random(0,255));
 
    angle[number] = int(random(0,359));
    diameter[number] = int(random(1,32));
  }
  }
  
  
  for(int i=0;i<100;i++){
  fill(red[i],green[i],blue[i]);
  strokeWeight(0);
  
  if(x[i]<0 || x[i]>640){
    angle[i] = 180-angle[i];
    diameter[i] = int(random(3,32));
    red[i] = int(random(0,255));
    green[i] = int(random(0,255));
    blue[i] = int(random(0,255));
  }else if(y[i]<0 || y[i]>480){
    angle[i] = 360-angle[i];
    diameter[i] = int(random(3,32));
    red[i] = int(random(0,255));
    green[i] = int(random(0,255));
    blue[i] = int(random(0,255));
  }
  
  x[i] += cos(radians(angle[i]))*5;
  y[i] += sin(radians(angle[i]))*(-5);
  ellipse(x[i],y[i],diameter[i],diameter[i]);
  }
}
