//TODO
//size adapt

float x,y;
PFont font;
FPoly l;
FPoly r;
FCompound obstacle;
FPoly b;
boolean drawState;



import fisica.*;
FWorld world;

int circleCount = 20;
float hole = 50;
float topMargin = 50;
float bottomMargin = 300;
float sideMargin = 100;
float xPos = 0;

void setup() {
  size(500, 500,P3D);
  smooth();
  font=loadFont("Gabriola-48.vlw");
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,300);
  createFrame();
 
}

void draw() {
 
  background(78,103,79);
  textFont(font);
  textSize(35);
  fill(126,162,128);
  text("Mosaic Window",25,380+35);
  textSize(24);
  text("Press mouse to make",25,408+35);
  text("mosaic fall in to windowpane",25,430+35);
  
  
  //draw window
  noStroke();
  fill(255);
  rect(200,150,100,200);
  ellipse(250,150,110,110);
  
  //draw shadow
  fill(255,100);
  noStroke();
  beginShape();
  vertex(250, 94);
  vertex(500, 200);
  vertex(500, 500);
  vertex(198,350);
  endShape(CLOSE);
      
      //draw blob
      
      // if ((frameCount % 40) == 0) {
        if (mousePressed==true) {
          if ((frameCount % 5) == 0) {
            b = new FPoly();
            float s = random(100, 110);
            float space = (width-sideMargin*2-s);
            xPos = (xPos + random(s, space/2)) % space;
            
            b.vertex(random(-5,-20), random(5,20));
            b.vertex(random(5,20),random(5,20));
            b.vertex(random(5,20), random(-5,-20));
            b.vertex(random(-5,-20), random(-5,-20));
            b.setPosition(mouseX,mouseY);
            b.setStroke(255);
            b.setStrokeWeight(2);
            b.setRestitution(1);
           
            b.setFill(random(0,200),255,random(0,200));
            //b.setDamping(3);
            b.setDensity(50);
            b.setFriction(200);
            world.add(b);
            
            x=b.getX();
            y=b.getY();
            
          }
      }  
     
  
  world.step();
  world.draw();
 
  
}



//generate window frame
void createFrame(){
  FBox b1 = new FBox(10, 200);//right
  b1.setPosition(50,0);
  b1.setFill(255);
  b1.setNoStroke();
  
  
  FBox b2 = new FBox(10, 200);//left
  b2.setPosition(-50, 0);
  b2.setFill(255);
  b2.setNoStroke();
  
  
  FBox b3 = new FBox(110, 10);//bottom
  b3.setPosition(0, 95);
  b3.setFill(255);
  b3.setNoStroke();
  
  FCompound windowPane = new FCompound();
  windowPane.addBody(b1);
  windowPane.addBody(b2);
  windowPane.addBody(b3);
  windowPane.setPosition(250,250);
  windowPane.setStatic(true);
  world.add(windowPane);
}



//clear
void keyPressed(){
  if(key == 'q' || key == 'Q'){
  world.clear();
  createFrame();
  }
}