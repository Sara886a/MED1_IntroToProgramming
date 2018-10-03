PImage img;

void setup() {
  size(600,400);
  img=loadImage("dahlia.jpg");
}

void draw(){
  background(0);
  image(img,0,0);
//  image(img,20,20,300,200);
}
