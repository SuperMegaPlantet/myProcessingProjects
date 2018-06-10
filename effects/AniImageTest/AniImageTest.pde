/**
 * shows the basic use of Ani aka a Hello Ani
 * 	 
 * MOUSE
 * click           : set end position of animation
 */

import de.looksgood.ani.*;

float x = width/2;
float y = height/2;
PImage img1;

void setup() {
  size(512,512);
  smooth();
  noStroke();

  // you have to call always Ani.init() first!
  Ani.init(this);
  
  img1=loadImage("001.png");
  img1.resize(int(img1.width*.75),int(img1.height*.75));
  imageMode(CENTER);
  image(img1,width/2,height/2);
}

void draw() {
  background(255);
 
 
  image(img1,width/2,y);
 
 
 
    if(frameCount % 30*2 ==0){//downward
  Ani.to(this,1,"y",height/2,Ani.EXPO_OUT);//1 second delay

  }
  if(frameCount %30*2 ==30){//upward
  Ani.to(this,1,"y",height/2+30,Ani.EXPO_OUT);// 1 second delay

  }
}