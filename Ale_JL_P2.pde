boolean click=false;
float x;
float y;
float life;
float cz;
float dz = 0.00005;

float Ax = 250;
float Ay = 250;
float cx;
float dx = 0.04;
float cy;
float dy = 0.09;

int contColor;

int i=0;
void setup() {
  size(400,400,P3D);
  background(0);
   smooth();
  colorMode(HSB);
  contColor=0; 
}

void draw() {
  
  life=10.0;
  contColor=(mouseY+1)%256;
  
  cx+= dx;
  cy += dy;
  cz += dz; 
      
  x = cos(cx*0.0001)* Ax*cos(cz);
  y = cos(cy*0.01)*Ay*cos(cz); 
 
//translate(mouseX,mouseY); 
//rotate(y/10);
 
if(click==true){
    pushMatrix();
    
 noStroke();
 fill(255,100);
 ellipse(mouseX, mouseY,1,1);
  
  stroke(floor(contColor),floor(255),floor(255),life*5); 
  strokeWeight(random(0,3));
  noFill();
  bezier(mouseX,mouseY,x,y,x,y,700,700);  //400 400 
  popMatrix();
  }
  else{ noLoop();}
  
 x+=0.001;
 y+=0.001;
 }
     
void mouseClicked(){
  
  if(click==true){ click=false; }
  else { click=true; loop();} 
}

void keyPressed() 
{
  switch (key) {
    case 'r':
      background(0);
      break;
    default:     
  }
}

void update() {
    life-= 1.0;
  }
boolean Dead() {
    if (life<0.0) {
      return true;
    } else {
      return false;
    }
  }
  
  
