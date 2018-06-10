import de.looksgood.ani.*;
PImage img1,img2,img3,img5,img7,img8,img9,img10,img12;

float y=0;

void setup(){
  size(800,600);
  background(255);
  img1=loadImage("001.png");
  img1.resize(int(img1.width*.75),int(img1.height*.75));
  
  img2=loadImage("002.png");
  img2.resize(int(img2.width*.75),int(img2.height*.75));
  
  
  img3=loadImage("003.png");
  img3.resize(int(img3.width*.55),int(img3.height*.55));
  
  img5=loadImage("005.png");
  img5.resize(int(img5.width*.65),int(img5.height*.65));
  
  img7=loadImage("007.png");
  img7.resize(int(img5.width*1.2),int(img5.height*1.2));
  
  img8=loadImage("008.png");
  img8.resize(int(img8.width*.8),int(img8.height*.8));
  img9=loadImage("009.png");
  img9.resize(int(img9.width*.7),int(img9.height*.7));
  
  img10=loadImage("0010.png");
  img10.resize(int(img10.width*.55),int(img10.height*.55));
  
  img12=loadImage("012.png");
  img12.resize(int(img12.width*.45),int(img12.height*.45));
  
   Ani.init(this);
}

void draw(){
  background(255);
  
  pushMatrix();
  translate(50,280);
  rotate(PI/8);
  image(img1,0,y);
  popMatrix();
  
  //rotate(PI/2);
  pushMatrix();
  translate(0,-100);
  rotate(PI/4);
  image(img2,0,y);
  popMatrix();
  
  pushMatrix();
  translate(220,380);
  image(img3,0,y);//balance doll
  popMatrix();
  
  pushMatrix();
  translate(180,-80);
  image(img5,0,y);
  popMatrix();
  
   pushMatrix();//robi
  translate(450,500);
  rotate(-PI/4);
  image(img7,0,y);
  popMatrix();
  
  pushMatrix();
  translate(600,30);
  rotate(-PI/8);
  image(img8,0,y);
  popMatrix();
  
  pushMatrix();
  translate(400,300);
  image(img9,0,y);//ceramic doll
  popMatrix();
  
  pushMatrix();
  translate(120,140);
  rotate(PI/2.5);
  image(img10,0,y);
  popMatrix();
  
   pushMatrix();
  translate(450,-10);
  rotate(0);
  image(img12,0,y);
  popMatrix();
  
   if(frameCount % 30*2 ==0){//downward
  Ani.to(this,1,"y",0,Ani.EXPO_OUT);//1 second delay

  }
  if(frameCount %30*2 ==30){//upward
  Ani.to(this,1,"y",-30,Ani.EXPO_OUT);// 1 second delay

  }
  
}