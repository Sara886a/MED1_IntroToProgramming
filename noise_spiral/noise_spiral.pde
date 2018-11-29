float r = 0;
float theta = 0;
float t = 0;
float size = 10;
float b = 50;
float g = 20;

void setup () {
  
 size (800,800);
 background(255);
  
}

void draw () {
  
 float x = r * cos(theta);
 float y = r * sin(theta);
 
 float noiseValue = noise(t);
 
 noStroke();
 fill(0,g,b);
 
 ellipse(x + width/2, y + height/2, size, size);
 
 theta += 0.04;
 r += 0.15;
 t += 0.1;
 size += noiseValue/100;
 b += noiseValue/5;
 g += noiseValue/6;
  
}
