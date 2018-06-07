PImage originalImg,blurImg;

void setup(){

 size(353,270);
 originalImg=loadImage("1.png");
 blurImg=loadImage("1.png");
 blurImg.filter(BLUR,6);
 
 
 //
 
}

void draw(){
  //white-originalImage
  //black-blurImage
  background(0);
  noStroke();
  fill(255);
  ellipse(mouseX,mouseY,100,100);
  
  
  
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