size(2000,2000);
background(loadImage("pattern2.png"));
PImage img=loadImage("vapor7.jpg");
blend(img,0,0,2000,2000,0,0,2000,2000,DARKEST);
save("pattern2_color7.png");