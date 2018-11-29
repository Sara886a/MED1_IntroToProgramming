
int screenSize = 800;

float size = width;

void fract (float size, float x, float y, float g, float b, float r) {
  
  noStroke();
  fill(0,g,b);
  ellipse(x, y, size, size);
  
  fill(r,0,b/4);
  ellipse(x, y+(size/2)-(size/10)/2, size/10, size/10);
  
  fill(r/6,0,b/6);
  ellipse(x, y+(size/2)-(size/10)/2, size/20, size/20);
  
  if (size > 2){
    
    size *= 0.90;
    y = size/2;
    g *= 0.92;
    b *= 0.95;
    r *= 0.92;
    
  fract(size,x,y,g,b,r);
  
  }
  
}

void setup () {
 size(800,800); 
 background(#221A2C);
}

void draw () {
  
 fract(screenSize,width/2,height/2,255,255,255); 
  
}
