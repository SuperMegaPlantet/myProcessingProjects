// draw binary image in draw() and obtain frosted glass effect:
//white-originalImage
//black-blurImage


PImage originalImg,blurImg;

float x = 0, y = 0;
float stepSize = 5.0;
PFont font;
String letters = "Love The World ";
float angleDistortion = 0.0;
int counter = 0;
int fontSizeMin = 50;

void setup(){

 size(353,270);
 smooth();
  
 originalImg=loadImage("1.png");
 blurImg=loadImage("1.png");
 blurImg.filter(BLUR,12);

 
 cursor(CROSS);
 font = loadFont("MicrosoftPhagsPa-Bold-48.vlw");
 textFont(font,fontSizeMin);
 textAlign(CENTER);
 
 
 
}

void draw(){
  
  background(255);
 
  ///////////draw binary image here
  //white-originalImage
  //black-blurImage
  fill(0);
  rectMode(CENTER);
  rect(mouseX,mouseY-20,400,70);
  fill(255);
  text(letters,mouseX,mouseY);
  
  
  //////////////Image Processing
  blurImg.loadPixels();
  originalImg.loadPixels();
  
  loadPixels();
  for(int y=0;y<=height-1;y++){
   for(int x=0;x<=width-1;x++){
    color px=pixels[y*width+x];
    if(red(px)<5){
      pixels[y*width+x]=blurImg.pixels[y*width+x];
    }else{
      pixels[y*width+x]=originalImg.pixels[y*width+x];
    }
   }
  }
  
  updatePixels();
}