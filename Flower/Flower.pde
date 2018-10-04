float red = random (255);
float green = random (255);
float blue = random (255);

void flower (float numPetals, int r, float x, float y,float red, float green, float blue) {
  
  float flowerX;
  float flowerY;
  
  fill(red,green,blue);

  for (float i=0;i<PI*2;i+=2*PI/numPetals) {
  flowerX = x + r*cos(i);
  flowerY = y + r*sin(i);
  ellipse(flowerX,flowerY,r,r); 
  }
     fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}

void setup() {
  size(1000,800);
  background(#43AF76);
}

void draw(){
 // int petalColor = #922Fa5;
  
flower (7, 60, width/2, height/2, red, green, blue);

flower (5, 80, 300, 200, red-50, green-20, blue+50);

flower (6, 30, 600, 600, red, green +100, blue-40);

flower (5, 40, 700, 150, red-80, green, blue+80);
 
}  
 
