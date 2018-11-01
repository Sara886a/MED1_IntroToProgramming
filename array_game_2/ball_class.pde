//A class for the dangerous balls
class Ball {
  
  //global variables for class
 int size;
 int playerSize;
 boolean respawn = true;
 float speed;
 float y;
 float x;

 
  
 Ball (int temp_size, int temp_playerSize) { //Setting up class for use
 //variables that can be defined outside the class
  size = temp_size; 
  playerSize = temp_playerSize;

 }
  
  //function to detect collision with the player
    void damage () {
    if (dist(mouseX,mouseY,x,y)<= playerSize/2+size/2) {
        background (80,0,0);
        //resetting current score
      timer.time = 0;  //the syntax here call on a variable from a different class ( objectName.variableName )
    }
  }
  
  //resetting the balls at random positions at the bottom of the screen
  void spawn () {
    float speedUp = 20;    
 
    if (respawn == true || y <= 0-size*5){
    x = random(size/2,width-size/2); //resetting to random x positions
    y = height+(size/4) * 3; //resetting to a y just outside the screen 
    respawn = false;
    speed = 0.2 + timer.time/10; //increasing speed with every 10 points
    }
    
        
    speed = speed + speed/speedUp; //increasing the balls speed as it moves across the screen
    y = y-speed;
    
    //drawing in the circles
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
  
  
