class Ball {
  
 int size;
 int playerSize;
 boolean respawn = true;
 float speed;
 float y;
 float x;
 float time;
  
 Ball (int temp_size, int temp_playerSize, float temp_time) {
  size = temp_size; 
  playerSize = temp_playerSize;
  time = temp_time;
 }
  
    void damage () {
    if (dist(mouseX,mouseY,x,y)<= playerSize/2+size/2) {
        background (80,0,0);
      time = 0;
    }
  }
  
  void spawn () {
    float speedUp = 20;
 
    if (respawn == true || y <= 0-size*5){
    x = random(size/2,width-size/2);
    y = height+(size/4) * 3;
    respawn = false;
    speed = 0.2;
    }
    
    speed = speed + speed/speedUp;
    y = y-speed;
    
    noStroke();
    fill(255,40,30);
    ellipse(x,y,size,size);
     
  }
 /* 
  void timer () {
    
    time += 1/frameRate;
    
   int textsize = 100;
   textSize(textsize);
   fill(60,80,100);
   text (time, width/2-textsize/5*3, textsize);
  }
  */

  }
  
  
