float life;
PImage fondo;
int i=0;
int col, shine;
///////////////////////////////////////////////////////////////////////////////////// 
void setup() {
  size(1000,1000);
  background(255);
  smooth();
  rectMode(CENTER);
  fondo=loadImage("fondo.png");
  colorMode(HSB);
  col = 0;
  shine = 0;
}
//////////////////////////////////////////////////////////////////////////////////
void draw() {
  col = (mouseX) % 256;
  shine = (mouseY) % 256;
  
    image(fondo,0,0,width,height);
    life= 10.0;
    
if(keyPressed){
      if(key=='1'){op1();}
      if(key=='2'){op2();}
      if(key=='3'){op3();}
      if(key=='4'){op4();}
      if(key=='5'){op5();}
      if(key=='b'||key=='B'){op6();}
}
}
///////////////////////////////////////////////////////////////////////////////////////////
void op1(){
rotate(i);
i+=10;

  fill(col,255,shine,life*2); 
  noStroke();
  strokeWeight(random(1));
  bezier(500,500,random(0,1000),random(0,1000),random(0,1000),random(0,1000),500,500);
}

//////////////////////////////////////////////////////////////////////////////////////////////
void op2(){        
fill(col,255,shine,life*(random(1,2)));
stroke(col,255,shine,1);
strokeWeight(random(1));
bezier(500,500,random(0,1000),random(0,1000),random(0,1000),random(0,1000),500,500);

i+=10;
}
//////////////////////////////////////////////////////////////////////////////////////////
void op3(){

rotate(i);
i+=10;


 noFill();
  stroke(col,255,shine,10);
  strokeWeight(random(3));
  for(int j=0;j<100;j++){

bezier(500,500,random(j*i),random(j*i),random(j*i),random(j*i),500,500);

}
 
}
///////////////////////////////////////////////////////////////////////////////////
void op4(){

rotate(i);
i+=10;

 noFill();
  stroke(col,255,shine,10);
  strokeWeight(random(1));
  for(int j=0;j<100;j++){

bezier(0,500,random(j*i),random(j*i),random(j*i),random(j*i),500,500);
}  
}
/////////////////////////////////////////////////////////////////////////

void op5(){
  
  rotate(i);
  i += random(1,10);
  noStroke();
  fill(col, 255, shine, life*(random(1,2)));
  rect(random(1000), random(1000), random(1, 500), random(1, 500), random(0,10), random(0,10), random(0,10), random(0,10));
}

///////////////////////////////////////////////////////////////////////////////////
void op6(){
fill(255);
noStroke();
 ellipse(width/2,height/2,800,800);
}
///////////////////////////////////////////////////////////////////////////////
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
   
void mousePressed() {   /////////////////////CODIGO PARA CAMBIAR CON UN CLICK
 image(fondo,0,0,width,height);
  saveFrame("Fondo###.jpg");
  }
